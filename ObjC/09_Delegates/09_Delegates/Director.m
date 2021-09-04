//
//  Director.m
//  09_Delegates
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import "Director.h"

@implementation Director

- (void) workerBeforeSalary:(ASWorker*) worker {
    
    NSLog(@"Worker %@ ", worker.name);
    
    if (worker.hoursWork >= 120 && worker.hoursWork <= 160) {
        [worker giveBonus];
    } else if (worker.hoursWork < 120) {
        [worker penalize];
    } else {
        NSLog(@"worker %@ should be fired", worker.name);
    }
    
}

- (void) worker:(ASWorker*) worker hasQuestion:(NSString*) question {
    NSLog(@"Worker %@ has a question: %@", worker.name, question);
}


@end
