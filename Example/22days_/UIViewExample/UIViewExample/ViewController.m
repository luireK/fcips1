//
//  ViewController.m
//  UIViewExample
//
//  Created by 이은경 on 2016. 5. 24..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    const CGFloat VIEW_HARF_WIDTH = self.view.frame.size.width/2;
    
    
    UIView *leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, VIEW_HARF_WIDTH, self.view.frame.size.height)];
    [leftView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:leftView];
    
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, VIEW_HARF_WIDTH, VIEW_HARF_WIDTH)];
    [topView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:topView];
    
    
    UIView *rightView = [[UIView alloc]initWithFrame:CGRectMake(VIEW_HARF_WIDTH, 0, VIEW_HARF_WIDTH, self.view.frame.size.height)];
    [rightView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:rightView];
    
    UIView *bottomView = [[UIView alloc]initWithFrame:CGRectMake(0, rightView.frame.size.height - VIEW_HARF_WIDTH, VIEW_HARF_WIDTH, VIEW_HARF_WIDTH)];
    [bottomView setBackgroundColor:[UIColor redColor]];
    [rightView addSubview:bottomView];
    
//    UIView *testView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width - 40, self.view.frame.size.height-40)];
//    [testView setBackgroundColor:[UIColor blackColor]];
//    [self.view addSubview:testView];
//    
//    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, testView.frame.size.width - 40, testView.frame.size.height-40)];
//    [topView setBackgroundColor:[UIColor yellowColor]];
//    [testView addSubview:topView];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
