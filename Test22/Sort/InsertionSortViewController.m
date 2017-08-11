//
//  InsertionSortViewController.m
//  Test22
//
//  Created by 小雨科技 on 2017/8/10.
//  Copyright © 2017年 jiajianhao. All rights reserved.
//

//插入排序法，就是检查第i个数字，如果在它的左边的数字比它大，进行交换，这个动作一直继续下去，直到这个数字的左边数字比它还要小，就可以停止了。插入排序法主要的回圈有两个变数：i和j，每一次执行这个回圈，就会将第i个数字放到左边恰当的位置去。

#import "InsertionSortViewController.h"

@interface InsertionSortViewController ()

@end

@implementation InsertionSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];

    NSLog(@"**************** 插入排序 ****************");

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
    for (int i=1; i<arrTemp.count; i++) {
        int j=i-1;
 
        id temp = [arrTemp objectAtIndex:i];
 
        for (; j>=0&&[[arrTemp objectAtIndex:j]doubleValue]>[temp doubleValue]; j--) {
 
            [arrTemp replaceObjectAtIndex:j+1 withObject:[arrTemp objectAtIndex:j]];
            
        }
        [arrTemp replaceObjectAtIndex:j+1 withObject:temp];

        
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
