//
//  ASDriver.h
//  04_Properties
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASDriver : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* car;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;

- (NSInteger) howOldAreYou;

@end

NS_ASSUME_NONNULL_END
