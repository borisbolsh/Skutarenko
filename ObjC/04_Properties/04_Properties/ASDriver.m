//
//  ASDriver.m
//  04_Properties
//
//  Created by Boris Bolshakov on 4.09.21.
//

#import "ASDriver.h"

@interface ASDriver ()
@property (assign, nonatomic) NSInteger nameCount;
@end

@implementation ASDriver

@synthesize name = _name;

- (id)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.car = @"Some car";
        self.height = 0.52f;
        self.weight = 5.f;
    }
    return self;
}

- (void) setName:(NSString *) inputName {
    
    NSLog(@"setter setName: is called");
    
    _name = inputName;
}


- (NSString*) name {
    
    self.nameCount = self.nameCount + 1;
    
    NSLog(@"name getter is called %ld times", self.nameCount);
    
    return _name;
}

- (NSString*) car {
    return _car;
}

- (NSInteger) age {
    
    NSLog(@"age getter is called");
    
    return _age;
}

- (NSInteger) howOldAreYou {
    return _age;
}

@end
