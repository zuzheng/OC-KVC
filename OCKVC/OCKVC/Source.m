//
//  Source.m
//  OCKVC
//
//  Created by Anderson on 20/10/20.
//
//

#import "Source.h"

@implementation Source

- (instancetype)initWithProvince:(NSString*)province city:(NSString*)city county:(NSString*)county {
    if (self = [super init]) {
        _province = province;
        _city = city;
        _county = county;
    }
    return self;
}

@end
