//
//  ARHuman.h
//  05_NSArray
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ARHuman : NSObject

typedef NS_ENUM(NSUInteger, ARGender) {
    Male,
    Female
};

@property(strong, nonatomic) NSString * name;
@property(assign, nonatomic) ARGender gender;
@property(assign, nonatomic) NSInteger height;
@property(assign, nonatomic) CGFloat weight;

- (void) move;

@end

NS_ASSUME_NONNULL_END
