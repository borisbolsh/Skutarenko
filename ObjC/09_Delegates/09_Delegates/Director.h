//
//  Director.h
//  09_Delegates
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import <Foundation/Foundation.h>
#import "ASWorker.h"

NS_ASSUME_NONNULL_BEGIN

@interface Director : NSObject <ASWorkerDelegate>

@end

NS_ASSUME_NONNULL_END
