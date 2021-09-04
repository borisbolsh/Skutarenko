//
//  AppDelegate.m
//  04_Properties
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import "AppDelegate.h"
#import "ASDriver.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ASDriver* driver = [[ASDriver alloc] init];
        /*
        driver.name = @"Vasiliy";
        driver.age = 25;
        driver.height = 1.8f;
        driver.weight = 80.f;
        */
        /*
        [driver setName:@"Vasiliy"];
        [driver setAge:25];
        [driver setHeight:1.8f];
        [driver setWeight:80.f];
        */
        NSLog(@"age = %d", [driver howOldAreYou]);
        
        NSLog(@"name = %@", driver.name);
        NSLog(@"name = %@", [driver name]);
        NSLog(@"name = %@", [driver name]);
        NSLog(@"name = %@", [driver name]);
        NSLog(@"name = %@", [driver name]);
        
        NSLog(@"car = %@", driver.car);
        /*
        NSLog(@"name = %@", driver.name);
        NSLog(@"age = %d", driver.age);
        NSLog(@"height = %f", driver.height);
        NSLog(@"weight = %f", driver.weight);
        */
        
        /*
        NSLog(@"name = %@", [driver name]);
        NSLog(@"age = %d", [driver age]);
        NSLog(@"height = %f", [driver height]);
        NSLog(@"weight = %f", [driver weight]);
        */
    
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
