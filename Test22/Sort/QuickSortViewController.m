//
//  QuickSortViewController.m
//  Test22
//
//  Created by 小雨科技 on 2017/8/11.
//  Copyright © 2017年 jiajianhao. All rights reserved.

//快速排序是冒泡排序的改进版，是目前已知的最快的排序方法。它的基本思想是：通过一趟排序将要排序的数据分割成独立的两部分，其中一部分的所有数据都比另外一部分的所有数据都要小，然后再按此方法对这两部分数据分别进行快速排序，整个排序过程可以递归进行，以此达到整个数据变成有序序列。
//在平均状况下，排序 n 个项目要Ο(n log n)次比较。在最坏状况下则需要Ο(n2)次比较，但这种状况并不常见。快速排序使用分治法(Divide and conquer)策略来把一个串行(list)分为两个子串行(sub-lists)。

//优点：极快，数据移动少；
//缺点：不稳定。

//1）设置两个变量i、j，排序开始的时候：i=0，j=N-1；
//2）以第一个数组元素作为关键数据，赋值给key，即key=A[0]；
//3）从j开始向前搜索，即由后开始向前搜索(j--)，找到第一个小于key的值A[j]，将A[j]和A[i]互换；
//4）从i开始向后搜索，即由前开始向后搜索(i++)，找到第一个大于key的A[i]，将A[i]和A[j]互换；
//5）重复第3、4步，直到i=j； (3,4步中，没找到符合条件的值，即3中A[j]不小于key,4中A[i]不大于key的时候改变j、i的值，使得j=j-1，i=i+1，直至找到为止。找到符合条件的值，进行交换的时候i， j指针位置不变。另外，i==j这一过程一定正好是i+或j-完成的时候，此时令循环结束）。

#import "QuickSortViewController.h"

@interface QuickSortViewController ()

@end

@implementation QuickSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"**************** 快速排序 ****************");
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    //    NSArray*arr = [[NSArray alloc]initWithObjects:@5,@1,@4,@2,@6,@3,@3.6,@8.8,@6.6,@7,nil];
    NSMutableArray*arr = [[NSMutableArray alloc]initWithObjects:@5,@1,@4,@2,@6,@3,@7,nil];
    
    [self sortArry:arr WithLow:0 AndHigh:arr.count-1];
//    NSLog(@"%@",arr);

//    [self sortArray:arr withLeft:0 andRight:arr.count-1];

    NSLog(@"%@",arr);
    NSLog(@"**************************************");
}

-(void)sortArry:(NSMutableArray*)arr WithLow:(NSInteger)low AndHigh:(NSInteger)high{
    if (low>=high) {
        return;
    }
    
    NSInteger i = low;
    NSInteger j =high;
    id key = arr[low];
     while (i<j) {
        while (i<j&&[key doubleValue]<=[arr[j] doubleValue]) {
            j--;
        }
        arr[i]=arr[j];
        while (i<j && [key doubleValue]>=[arr[i]doubleValue]) {
            i++;
        }
        arr[j]=arr[i];
    }
    arr[i]=key;
    
    [self sortArry:arr WithLow:low AndHigh:i-1];
    [self sortArry:arr WithLow:i+1 AndHigh:high];
    
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
