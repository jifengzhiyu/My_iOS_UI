//
//  ViewController.m
//  毛玻璃
//
//  Created by 翟佳阳 on 2022/3/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置图片
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.image = [UIImage imageNamed:@"pic.png"];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
    
    //设置毛玻璃
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:imageView.bounds];
    //UIBarStyleDefault
    //UIBarStyleBlack
    toolbar.barStyle = UIBarStyleBlack;
    toolbar.alpha = 0.99;
    [imageView addSubview:toolbar];
}


@end
