//
//  AppDelegate.m
//  05_NSArray
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import "AppDelegate.h"
#import "ARHuman.h"
#import "ARRunner.h"
#import "ARSwimmer.h"
#import "ARBicyclist.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ARHuman * human = [[ARHuman alloc] init];
    ARRunner * runner1 = [[ARRunner alloc] init];
    ARSwimmer * swimmer1 = [[ARSwimmer alloc] init];
    ARBicyclist * bicyclist1 = [[ARBicyclist alloc] init];
   
    [human setName: @"Lara"];
    [human setGender: Female];
    [human setHeight: 1.7f];
    [human setWeight: 62.f];
    
    runner1.name = @"Robert";
    runner1.gender = Male;
    runner1.height = 1.9f;
    runner1.weight = 70.f;
    
    [swimmer1 setName: @"Helen"];
    [swimmer1 setGender: Female];
    [swimmer1 setHeight: 1.6f];
    [swimmer1 setWeight: 50.f];
    
    bicyclist1.name = @"Mark";
    bicyclist1.gender = Male;
    bicyclist1.height = 1.8f;
    bicyclist1.weight = 68.f;
    
    NSArray * array = [NSArray arrayWithObjects: human, runner1, swimmer1, bicyclist1, nil];
    
    for (ARHuman* obj in array) {
        NSLog(@"name = %@, height = %f, weight = %f", obj.name, obj.height, obj.weight);
        if (obj.gender == 0) {
            NSLog(@"gender = male");
        } else {
            NSLog(@"gender = female");
        }
        [obj move];
    }
    
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
