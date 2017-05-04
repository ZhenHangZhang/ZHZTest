//
//  ViewController.m
//  ZHZTest
//
//  Created by zhanghangzhen on 2017/5/4.
//  Copyright © 2017年 xbk. All rights reserved.
//

#import "ViewController.h"

 
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

/** */
@property (nonatomic,strong)UITableView*tabV;






@end

@implementation ViewController


-(UITableView *)tabV{
    
    if (!_tabV) {
        _tabV = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        
        _tabV.delegate = self;
        _tabV.dataSource = self;
        
        [self.view addSubview:_tabV];
    }return _tabV;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabV.accessibilityIdentifier = @"tableView";
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString*cellId = @"zhanghangzhen";
    
    UITableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld----%ld",indexPath.section,indexPath.row];
#ifdef DEBUG
    [cell setAccessibilityLabel:[NSString stringWithFormat:@"Section%ldRow%ld",indexPath.section,indexPath.row]];
    
#endif    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"111" message:@"11111111" preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    [alertC addAction:[UIAlertAction actionWithTitle:@"222" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [alertC addAction:[UIAlertAction actionWithTitle:@"333" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];[alertC addAction:[UIAlertAction actionWithTitle:@"444" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];[alertC addAction:[UIAlertAction actionWithTitle:@"555" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];[alertC addAction:[UIAlertAction actionWithTitle:@"666" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];[alertC addAction:[UIAlertAction actionWithTitle:@"quxiao" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    
    [self presentViewController:alertC animated:YES completion:nil];
    
    
    
}




@end
