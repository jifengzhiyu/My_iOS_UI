//
//  ViewController.m
//  九宫格增减
//
//  Created by 翟佳阳 on 2022/3/20.
//

#import "ViewController.h"

@interface ViewController ()

// 购物车
@property (weak, nonatomic) IBOutlet UIView *shopCarView;
// 添加按钮
@property (weak, nonatomic) IBOutlet UIButton *addButton;
// 删除按钮
@property (weak, nonatomic) IBOutlet UIButton *removeButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.removeButton.enabled = NO;
}

/**
 *  添加到购物车
 *
 *  @param button 按钮
 */
- (IBAction)add:(UIButton *)button {
/***********************1.定义一些常量*****************************/
    // 1.总列数
    NSInteger allCols = 4;
    // 2.商品的宽度 和 高度
    CGFloat width = 60;
    CGFloat height = 80;
    // 3.求出水平间距 和 垂直间距
    CGFloat hMargin = (self.shopCarView.frame.size.width - allCols * width) / (allCols -1);
    CGFloat vMargin = hMargin;
    // 4. 设置索引
    NSInteger index = self.shopCarView.subviews.count;
    // 5.求出x值
    CGFloat x = (hMargin + width) * (index % allCols);
    CGFloat y = (vMargin + height) * (index / allCols);
    
/***********************2.创建一个商品*****************************/
  // 1.创建商品的view
    UIView *shopView = [[UIView alloc] init];
  // 2.设置frame
    shopView.frame = CGRectMake(x, y, width, height);
  // 3.设置背景颜色
    shopView.backgroundColor = [UIColor greenColor];
  // 4.添加到购物车
    [self.shopCarView addSubview:shopView];
    
/***********************3.设置按钮的状态*****************************/
//    button.enabled = (index != 5);
    
    // 5.设置删除按钮的状态
    self.removeButton.enabled = YES;
    
}

/**
 *  从购物车中删除
 *
 *  @param button 按钮
 */
- (IBAction)remove:(UIButton *)button {
    // 1. 删除最后一个商品
    UIView *lastShopView = [self.shopCarView.subviews lastObject];
    [lastShopView removeFromSuperview];
    
    // 3. 设置添加按钮的状态
//    self.addButton.enabled = YES;
    
//    self.removeButton.enabled = (self.shopCarView.subviews.count != 0);
    
}

@end
