//
//  Fruit.h
//  OCKVC
//
//  Created by Anderson on 20/10/20.
//
//

#import <Foundation/Foundation.h>

#import "Source.h"

@interface Fruit : NSObject
@property NSString* name;
@property CGFloat price;
@property Source* from;

- (instancetype)initWithDict:(NSDictionary*)dict;

@end
