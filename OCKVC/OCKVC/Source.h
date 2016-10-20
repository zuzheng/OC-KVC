//
//  Source.h
//  OCKVC
//
//  Created by Anderson on 20/10/20.
//
//

#import <Foundation/Foundation.h>

@interface Source : NSObject
@property NSString* province;
@property NSString* city;
@property NSString* county;

- (instancetype)initWithProvince:(NSString*)province city:(NSString*)city county:(NSString*)county;

@end
