//
//  SelectionSortViewController.m
//  Test22
//
//  Created by 小雨科技 on 2017/8/10.
//  Copyright © 2017年 jiajianhao. All rights reserved.
//
//选择排序：比如在一个长度为N的无序数组中，在第一趟遍历N个数据，找出其中最小的数值与第一个元素交换，第二趟遍历剩下的N-1个数据，找出其中最小的数值与第二个元素交换......第N-1趟遍历剩下的2个数据，找出其中最小的数值与第N-1个元素交换，至此选择排序完成。
//选择排序是不稳定的排序方法。
//优点：移动数据的次数已知（n-1 次）；
//缺点：比较次数多。

#import "SelectionSortViewController.h"

@interface SelectionSortViewController ()

@end

@implementation SelectionSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];

    NSLog(@"**************** 选择排序 ****************");

    
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
    for (int i=0; i<arrTemp.count; i++) {

        NSInteger index =i;
        for (int j =i+1; j<arrTemp.count; j++) {
            
            if ([[arrTemp objectAtIndex:index]doubleValue]>[[arrTemp objectAtIndex:j]doubleValue]) {
               
                index =j;
            }
            
        }
        
        if (index!=i) {
            id temp = [arrTemp objectAtIndex:i];
            
            [arrTemp replaceObjectAtIndex:i withObject:[arrTemp objectAtIndex:index]];
            
            [arrTemp replaceObjectAtIndex:index withObject:temp] ;
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
