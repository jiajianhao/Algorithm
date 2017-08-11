//
//  ShellSortViewController.m
//  Test22
//
//  Created by 小雨科技 on 2017/8/11.
//  Copyright © 2017年 jiajianhao. All rights reserved.
//
//希尔排序(Shell Sort)是插入排序的一种。也称缩小增量排序，是直接插入排序算法的一种更高效的改进版本。希尔排序是非稳定排序算法。该方法因DL．Shell于1959年提出而得名。
//也叫分组插入排序
//希尔排序是把记录按下标的一定增量分组，对每组使用直接插入排序算法排序；随着增量逐渐减少，每组包含的关键词越来越多，当增量减至1时，整个文件恰被分成一组，算法便终止。
//希尔排序是基于插入排序的以下两点性质而提出改进方法的：
//1、插入排序在对几乎已经排好序的数据操作时，效率高，即可以达到线性排序的效率。
//2、但插入排序一般来说是低效的，因为插入排序每次只能将数据移动一位。

//基本思想是：先将整个待排元素序列分割成若干个子序列（由相隔某个“增量”的元素组成的）分别进行直接插入排序，然后依次缩减增量再进行排序，待整个序列中的元素基本有序（增量足够小）时，再对全体元素进行一次直接插入排序。因为直接插入排序在元素基本有序的情况下（接近最好情况），效率是很高的，因此希尔排序在时间效率上比前两种方法有较大提高。

#import "ShellSortViewController.h"

@interface ShellSortViewController ()

@end

@implementation ShellSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"**************** 希尔排序 ****************");
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    //    NSArray*arr = [[NSArray alloc]initWithObjects:@5,@1,@4,@2,@6,@3,@3.6,@8.8,@6.6,@7,nil];
    NSMutableArray*arr = [[NSMutableArray alloc]initWithObjects:@5,@1,@4,@2,@6,@3,@7,nil];
    
//    [self sortArry:arr WithLow:0 AndHigh:arr.count-1];
    //    NSLog(@"%@",arr);
    
    //    [self sortArray:arr withLeft:0 andRight:arr.count-1];
    
    NSLog(@"%@",arr);
    NSLog(@"**************************************");
}


-(void)shellSortArray:(NSMutableArray*)arr{
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
