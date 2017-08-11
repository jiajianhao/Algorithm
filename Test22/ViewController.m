//
//  ViewController.m
//  Test22
//
//  Created by 小雨科技 on 2017/8/10.
//  Copyright © 2017年 jiajianhao. All rights reserved.
//  这里 做的 都是 按 从小到大 排序 的

#import "ViewController.h"
#import "InsertionSortViewController.h"
#import "BubbleSortViewController.h"
#import "SelectionSortViewController.h"
#import "QuickSortViewController.h"
#define mTableCellID @"mTableCellID"
@interface ViewController (){
    
}
@property(nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    self.dataArray =[[NSMutableArray alloc]initWithObjects:@"插入排序",@"冒泡排序",@"选择排序",@"快速排序",@"希尔排序",@"堆排序",nil];
    [self.mTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:mTableCellID];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:mTableCellID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    cell.backgroundColor=[UIColor clearColor];
    
    cell.textLabel.text=[NSString stringWithFormat:@"%@",[self.dataArray objectAtIndex:indexPath.row]];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        InsertionSortViewController *showvc = [[InsertionSortViewController alloc]init];
        [self.navigationController pushViewController:showvc animated:YES];
    }
    if (indexPath.row==1) {
        BubbleSortViewController *showvc = [[BubbleSortViewController alloc]init];
        [self.navigationController pushViewController:showvc animated:YES];
    }
    if (indexPath.row==2) {
        SelectionSortViewController *showvc = [[SelectionSortViewController alloc]init];
        [self.navigationController pushViewController:showvc animated:YES];
    }
    if (indexPath.row==3) {
        QuickSortViewController *showvc = [[QuickSortViewController alloc]init];
        [self.navigationController pushViewController:showvc animated:YES];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
