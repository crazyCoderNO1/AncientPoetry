//
//  APPeotryStrainsModel.m
//  AncientPoetry
//
//  Created by Aka on 2018/2/10.
//  Copyright © 2018年 Aka. All rights reserved.
//

#import "APPeotryStrainsModel.h"

@implementation APPeotryStrainsModel

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper {
    return @{
             @"strains": @"strains",
             };
}

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass {
    return @{
             @"strains": [NSString class],
             };
}

@end
