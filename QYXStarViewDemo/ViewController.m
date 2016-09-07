//
//  ViewController.m
//  QYXStarViewDemo
//
//  Created by 邱云翔 on 16/9/7.
//  Copyright © 2016年 邱云翔. All rights reserved.
//

#import "ViewController.h"
#import "QYXStarView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //在创建的时候其实已经能算出来具体的frame的值了，注意间隔
    QYXStarView *view1 = [[QYXStarView alloc] initWithFrame:CGRectMake(70, 100, 190, 30) size:CGSizeMake(30, 30) interval:40];
    [self.view addSubview:view1];
    [view1 setUpViewsWithGrades:3.5];
    
    //
    QYXStarView *view2 = [[QYXStarView alloc] initWithFrame:CGRectMake(70, 200, 190, 30) size:CGSizeMake(30, 30) interval:40];
    [self.view addSubview:view2];
    [view2 setUpViewsWithGrades:2.3];
    
    //
    QYXStarView *view3 = [[QYXStarView alloc] initWithFrame:CGRectMake(70, 300, 190, 30) size:CGSizeMake(30, 30) interval:40];
    [self.view addSubview:view3];
    [view3 setUpViewsWithGrades:4.7];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
