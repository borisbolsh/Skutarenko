//
//  ARHuman.h
//  05_NSArray
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import <Foundation/Foundation.h>
#import

NS_ASSUME_NONNULL_BEGIN

@interface ARHuman : NSObject

typedef NS_ENUM(NSUInteger, ARGender) {
  Male,
  Famale
};

@property(strong, nonatomic) NSString * name;
@property(nonatomic) ARGender gender;
@property(nonatomic) int height;
@property(nonatomic) float weight;

- (void) move;

@end

NS_ASSUME_NONNULL_END
