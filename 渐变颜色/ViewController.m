//
//  ViewController.m
//  渐变颜色
//
//  Created by 王小林 on 2017/3/14.
//  Copyright © 2017年 王小林. All rights reserved.
//

#import "ViewController.h"


#import "KSBarrageItemView.h"
// rgb颜色转换（16进制->10进制）
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    headImgViewBg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, WIDTH(self.view), SCREEN_WIDTH*0.53)];
//    _headImgViewBg.userInteractionEnabled = YES;
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)UIColorFromRGB(0x752ccd).CGColor,
                       (id)[UIColor blueColor].CGColor,(id)UIColorFromRGB(0xcd1f87).CGColor,nil];
    gradient.startPoint = CGPointMake(0, 0);
    gradient.endPoint = CGPointMake(1, 1);
    [self.view.layer  insertSublayer:gradient atIndex:0];
    
    
//    KSBarrageItemView *view=[[KSBarrageItemView alloc]initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200)];
//    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
