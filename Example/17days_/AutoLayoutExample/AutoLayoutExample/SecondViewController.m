//
//  SecondViewController.m
//  AutoLayoutExample
//
//  Created by 이은경 on 2016. 5. 17..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

-(void)loadView{
    [super loadView];
    
    NSLog(@"Second View Controller loadView");
    
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"Second View Controller viewDidLoad");
    
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"Second View Controller viewWillAppear");
}


-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    NSLog(@"Second View Controller viewWillLayoutSubviews");
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    NSLog(@"Second View Controller viewDidLayoutSubviews");
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSLog(@"Second View Controller viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    NSLog(@"Second View Controller viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    
    NSLog(@"Second View Controller viewDidDisappear");
}

-(IBAction)cilckCloseButton:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)dealloc{
    
    NSLog(@"Second View Controller dealloc");
    
}


@end
