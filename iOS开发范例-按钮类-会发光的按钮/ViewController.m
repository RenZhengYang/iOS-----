//
//  ViewController.m
//  iOS开发范例-按钮类-会发光的按钮
//
//  Created by mac on 16/9/21.
//  Copyright © 2016年 mac. All rights reserved.

//  简书详解：http://www.jianshu.com/p/cbc9555ed91e

#import "ViewController.h"

@interface ViewController ()
/*
 *会发光的按钮
 */
@property (weak, nonatomic) IBOutlet UIButton *canShineBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //  view->背景
    self.view.backgroundColor = [UIColor blackColor];
    //  按钮->文字
    [_canShineBtn setTitle:@"Click!" forState:UIControlStateNormal];
    //  字体->大小
    _canShineBtn.font = [UIFont systemFontOfSize:20.0];
    //  点击事件
    [_canShineBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
   
}
#pragma 点击 (canShineBtn) - 发光
- (IBAction)click:(id)sender {
    _canShineBtn.showsTouchWhenHighlighted = YES;
 }

@end
