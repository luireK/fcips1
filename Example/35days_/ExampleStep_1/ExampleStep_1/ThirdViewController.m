//
//  ThirdViewController.m
//  ExampleStep_1
//
//  Created by 이은경 on 2016. 6. 13..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ThirdViewController.h"
#import "ViewController.h"
#import "SecondViewController.h"

@interface ThirdViewController () //<UINavigationControllerDelegate>
@property (nonatomic,weak) UIButton *beforeLinkBtn;
@property (nonatomic,weak) UIButton *mainLinkBtn;
@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //바로 전 화면으로
    UIButton *beforeLinkBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 200, 50)];
    [beforeLinkBtn setTitle:@"이전화면으로" forState:UIControlStateNormal];
    [beforeLinkBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    self.beforeLinkBtn = beforeLinkBtn;
    [beforeLinkBtn addTarget:self action:@selector(beforeLinkBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:beforeLinkBtn];
    
    //제일 첫 화면으로
    UIButton *mainLinkBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 150, 200, 50)];
    [mainLinkBtn setTitle:@"첫 화면으로" forState:UIControlStateNormal];
    [mainLinkBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    self.mainLinkBtn = mainLinkBtn;
    [mainLinkBtn addTarget:self action:@selector(mainLinkBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:mainLinkBtn];
    
}

-(void)beforeLinkBtnAction:(id)sender{
    //SecondViewController *secondView = [[SecondViewController alloc]initWithNibName:@"SecondViewController"
                                                                            // bundle:nil];
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)mainLinkBtnAction:(id)sender{
    //ViewController *mainView = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
    [self.navigationController popToRootViewControllerAnimated:YES];
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
