//
//  APPeotryModel.h
//  AncientPoetry
//
//  Created by Aka on 2018/2/10.
//  Copyright © 2018年 Aka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>

@interface APPeotryItemModel: NSObject <YYModel>

@property (nonatomic, copy) NSString *author;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) NSArray<NSString *> *paragraphs;
@property (nonatomic, strong) NSArray<NSString *> *strains;

@end

@interface APPeotryModel : NSObject <YYModel>

@end
