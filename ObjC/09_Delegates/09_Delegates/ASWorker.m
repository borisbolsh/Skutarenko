//
//  ASWorker.m
//  09_Delegates
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import "ASWorker.h"

@implementation ASWorker

- (BOOL) howWork {
    
    BOOL randomNum = arc4random() % 2;
    
    if (!randomNum) {
        [self.delegate workerBeforeSalary:self];
    }
    
    return randomNum;
}

- (void) giveBonus {
    NSLog(@"%@ +100$", self.name);
}

- (void) penalize {
    NSLog(@"%@ -100$", self.name);
}

@end
