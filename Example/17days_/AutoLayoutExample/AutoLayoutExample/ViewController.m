//
//  ViewController.m
//  AutoLayoutExample
//
//  Created by 이은경 on 2016. 5. 17..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)loadView{
    [super loadView];
    
    NSLog(@"First View Controller loadView");
    
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
     NSLog(@"First View Controller viewDidLoad");
    
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"First View Controller viewWillAppear");
}


-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    NSLog(@"First View Controller viewWillLayoutSubviews");
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
     NSLog(@"First View Controller viewDidLayoutSubviews");
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSLog(@"First View Controller viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    NSLog(@"First View Controller viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    
    NSLog(@"First View Controller viewDidDisappear");
}


@end
