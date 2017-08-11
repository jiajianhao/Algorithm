//
//  BubbleSortViewController.m
//  Test22
//
//  Created by 小雨科技 on 2017/8/10.
//  Copyright © 2017年 jiajianhao. All rights reserved.
//冒泡排序算法的运作如下：（从后往前）
//比较相邻的元素。如果第一个比第二个大，就交换他们两个。
//对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对。在这一点，最后的元素应该会是最大的数。
//针对所有的元素重复以上的步骤，除了最后一个。
//持续每次对越来越少的元素重复上面的步骤，直到没有任何一对数字需要比较。

//冒泡排序：依次比较相邻的数据，将小数据放在前，大数据放在后；即第一趟先比较第1个和第2个数，大数在后，小数在前，再比较第2个数与第3个数，大数在后，小数在前，以此类推则将最大的数"滚动"到最后一个位置；第二趟则将次大的数滚动到倒数第二个位置......第n-1(n为无序数据的个数)趟即能完成排序。

//优点：稳定；
//缺点：慢，每次只能移动相邻两个数据。

#import "BubbleSortViewController.h"

@interface BubbleSortViewController ()

@end

@implementation BubbleSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    NSLog(@"**************** 冒泡排序 ****************");
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    //    NSArray*arr = [[NSArray alloc]initWithObjects:@5,@1,@4,@2,@6,@3,@3.6,@8.8,@6.6,@7,nil];
    NSArray*arr = [[NSArray alloc]initWithObjects:@5,@1,@4,@2,@6,@3,@7,nil];
    
    NSMutableArray*arr1 = [self sortArray:arr];
    
    NSLog(@"%@",arr1);
    NSLog(@"**************************************");
}

-(NSMutableArray*)sortArray:(NSArray*)arr{
    NSMutableArray *arrTemp =[[NSMutableArray alloc]initWithArray:arr];
    if (arr.count<1) {
        return arrTemp;
    }
 
    for (int i =0; i<arrTemp.count; i++) {
        for (int j =0; j<arrTemp.count-1-i; j++) {
            if ([[arrTemp objectAtIndex:j]doubleValue]>[[arrTemp objectAtIndex:j+1]doubleValue]) {
                id temp = [arrTemp objectAtIndex:j];
                [arrTemp replaceObjectAtIndex:j withObject:[arrTemp objectAtIndex:j+1]];
                [arrTemp replaceObjectAtIndex:j+1 withObject:temp];
            }
        }
    }
    
    
    return arrTemp;
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
