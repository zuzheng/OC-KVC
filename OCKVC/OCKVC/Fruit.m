//
//  Fruit.m
//  OCKVC
//
//  Created by Anderson on 20/10/20.
//
//

#import "Fruit.h"

@implementation Fruit

- (instancetype)initWithDict:(NSDictionary*)dict {
    self = [super init];
    if (self) {
        [dict enumerateKeysAndObjectsUsingBlock:^(id key, id value, BOOL* stop) {
            [self setValue:value forKey:key];
        }];
    }
    return self;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    NSLog(@"try set value(%@) for key(%@), but key doesn't exist", value, key);
}

- (id)valueForUndefinedKey:(NSString *)key {
    NSLog(@"try get value for key(%@), but key doesn't exist", key);
    return nil;
}

@end
