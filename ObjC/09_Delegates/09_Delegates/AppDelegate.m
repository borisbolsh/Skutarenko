//
//  AppDelegate.m
//  09_Delegates
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import "AppDelegate.h"
#import "ASWorker.h"
#import "Director.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ASWorker* worker1 = [[ASWorker alloc] init];
    worker1.name = @"John";
    worker1.hoursWork = 121;
    
    ASWorker* worker2 = [[ASWorker alloc] init];
    worker2.name = @"Bill";
    worker2.hoursWork = 40;
    
    ASWorker* worker3 = [[ASWorker alloc] init];
    worker3.name = @"George";
    worker3.hoursWork = 160;
    
    ASWorker* worker4 = [[ASWorker alloc] init];
    worker4.name = @"Sasha";
    worker4.hoursWork = 130;
    
    Director* director = [[Director alloc] init];
    
    worker1.delegate = director;
    worker2.delegate = director;
    worker3.delegate = director;
    worker4.delegate = director;
    
    NSLog(@"%@ are you ok? %@",worker1.name, [worker1 howWork] ? @"Yes" : @"No");
    NSLog(@"%@ are you ok? %@",worker2.name, [worker2 howWork] ? @"Yes" : @"No");
    NSLog(@"%@ are you ok? %@",worker3.name, [worker3 howWork] ? @"Yes" : @"No");
    NSLog(@"%@ are you ok? %@",worker4.name, [worker4 howWork] ? @"Yes" : @"No");
    
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
