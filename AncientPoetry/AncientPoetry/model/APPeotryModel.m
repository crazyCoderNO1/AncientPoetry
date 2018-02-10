//
//  APPeotryModel.m
//  AncientPoetry
//
//  Created by Aka on 2018/2/10.
//  Copyright © 2018年 Aka. All rights reserved.
//

#import "APPeotryModel.h"


@implementation APPeotryItemModel

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper {
    return @{
             @"title": @"title",
             @"paragraphs": @"paragraphs",
             @"strains": @"strains",
             @"author": @"author",
             };
}

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass {
    return @{
             @"paragraphs": [NSString class],
             @"strains" : [NSString class],
             };
}


@end

@implementation APPeotryModel



@end
