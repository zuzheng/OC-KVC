//
//  main.m
//  OCKVC
//
//  Created by Anderson on 20/10/20.
//
//

#import <Foundation/Foundation.h>

#import "Fruit.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Source *source = [[Source alloc] initWithProvince:@"上海" city:@"上海" county:@"浦东"];
        NSDictionary *dic = @{@"name":@"苹果",@"price":@12,@"from":source};
        Fruit *fruit = [[Fruit alloc] initWithDict:dic];
        NSLog(@"provice:%@",[fruit valueForKeyPath:@"from.province"]);//
        
        NSMutableArray* array = [NSMutableArray array];
        {
            NSDictionary* dict = @{@"name" : @"苹果", @"price" : @1.5};
            Fruit* fruit = [[Fruit alloc] initWithDict:dict];
            [array addObject:fruit];
        }
        {
            NSDictionary* dict = @{@"name" : @"苹果", @"price" : @1};
            Fruit* fruit = [[Fruit alloc] initWithDict:dict];
            [array addObject:fruit];
        }
        {
            NSDictionary* dict = @{@"name" : @"苹果", @"price" : @2.5};
            Fruit* fruit = [[Fruit alloc] initWithDict:dict];
            [array addObject:fruit];
        }
        
//        CGFloat sum = 0;
//        for (Fruit* f in array) {
//            sum += f.price;
//        }
//        CGFloat avg = sum / array.count;
        
        /* 
         KVC Collection Operators
         [array valueForKeyPath:@"@avg.price"] //求平均值
         [array valueForKeyPath:@"@sun.price"] //求和
         [array valueForKeyPath:@"@max.price"] //取最大值
         [array valueForKeyPath:@"@min.price"]
         [array valueForKeyPath:@"@count.price"] //数量
         */
        CGFloat avg = [[array valueForKeyPath:@"@avg.price"] floatValue];
        CGFloat max = [[array valueForKeyPath:@"@max.price"] floatValue];
        CGFloat cou = [[array valueForKeyPath:@"@count.price"] floatValue];
        
        NSLog(@"result: avg:%@ max:%@ cou:%@", @(avg),@(max),@(cou));

    }
    return 0;
}
