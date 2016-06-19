//
//  SecondViewController.m
//  ExampleStep_1
//
//  Created by 이은경 on 2016. 6. 13..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController () <UINavigationControllerDelegate>

@property (nonatomic, weak) UIView *secondMainView;
@property (nonatomic,weak) UILabel *showLB;
@property (nonatomic,weak) UIButton *nnextLinkBtn;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *showLB = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, 200, 50)];
    [showLB setTextColor:[UIColor blackColor]];
    self.showLB = showLB;
    self.showLB.text = self.data;
    [self.view addSubview:showLB];
    
    UIButton *nnextLinkBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 150, 150, 35)];
    [nnextLinkBtn setTitle:@"다음화면으로!" forState:UIControlStateNormal];
    [nnextLinkBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    self.nnextLinkBtn = nnextLinkBtn;
    [nnextLinkBtn addTarget:self action:@selector(nnextLinkBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nnextLinkBtn];
    
}

-(IBAction)nnextLinkBtnAction:(id)sender{
    
    ThirdViewController *thirdView = [[ThirdViewController alloc]initWithNibName:@"ThirdViewController"
                                                                             bundle:nil];
    
    [self.navigationController pushViewController:thirdView animated:YES];
    
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
