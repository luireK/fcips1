//
//  ViewController.m
//  UIScrollViewExample
//
//  Created by 이은경 on 2016. 5. 27..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIScrollView *myScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 480, 640)];
    [myScrollView setContentSize:CGSizeMake(myScrollView.frame.size.width*3, 720)];
    myScrollView.delegate = self;
    myScrollView.pagingEnabled = YES;
    [self.view addSubview:myScrollView];
    
    UIView *myView1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 480, 720)];
    [myScrollView addSubview:myView1];
    myView1.backgroundColor= [UIColor blueColor];
    
    UIView *myView2 = [[UIView alloc]initWithFrame:CGRectMake(480, 0, 480, 720)];
    [myScrollView addSubview:myView2];
    myView2.backgroundColor= [UIColor redColor];
    
    UIView *myView3 = [[UIView alloc]initWithFrame:CGRectMake(960, 0, 480, 720)];
    [myScrollView addSubview:myView3];
    myView3.backgroundColor= [UIColor orangeColor];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
