//
//  ASWorker.h
//  09_Delegates
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ASWorkerDelegate;

@interface ASWorker : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger hoursWork;
@property (weak, nonatomic) id <ASWorkerDelegate> delegate;

- (BOOL) howWork;
- (void) giveBonus;
- (void) penalize;

@end

@protocol ASWorkerDelegate
@required
- (void) workerBeforeSalary:(ASWorker*) worker;
- (void) worker:(ASWorker*) worker hasQuestion:(NSString*) question;

@end

NS_ASSUME_NONNULL_END
