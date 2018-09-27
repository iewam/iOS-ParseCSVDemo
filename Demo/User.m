//
//  User.m
//  Demo
//
//  Created by Steven on 2018/9/8.
//  Copyright © 2018年 Steven. All rights reserved.
//

#import "User.h"

@implementation User

- (NSString *)description {
    NSArray *keys = @[@"phone", @"count"];
    return [self dictionaryWithValuesForKeys:keys].description;
}

@end
