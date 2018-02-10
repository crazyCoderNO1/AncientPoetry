//
//  ViewController.m
//  AncientPoetry
//
//  Created by Aka on 2018/2/10.
//  Copyright © 2018年 Aka. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import "APPeotryModel.h"
#import "APPoetryViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, copy) NSString *filename;
@property (nonatomic, strong) NSArray<APPeotryItemModel *> *protries;

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    
    self.title = @"诗歌";
    
    _filename = @"1000";
    
    id dict = [self readLocalFileWithName:_filename];
    NSLog(@"dict :%@",dict);
    NSArray<APPeotryItemModel *> *protries = [NSArray<APPeotryItemModel *> yy_modelArrayWithClass: [APPeotryItemModel class] json:dict];
    _protries = protries;
    NSLog(@"jsdj");

}

// 读取本地JSON文件
- (NSDictionary *)readLocalFileWithName:(NSString *)name {
    // 获取文件路径
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@"json"];
    // 将文件数据化
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    // 对数据进行JSON格式化并返回字典形式
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _protries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class]) forIndexPath:indexPath];
    APPeotryItemModel *item = _protries[indexPath.row];
    cell.textLabel.text = item.title;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    APPoetryViewController *vc = [APPoetryViewController new];
    vc.item = _protries[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
