//
//  ViewController.m
//  LogInPage
//
//  Created by 이은경 on 2016. 5. 23..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//텍스트필드와 오토레이아웃구성과 이어주기 위해 선언.
@property (nonatomic, weak) IBOutlet UITextField *iidd;
@property (nonatomic, weak) IBOutlet UITextField *ps;

//버튼 액션을 선언.
//-(IBAction)loginAction:(UIButton *)btnLogin;
//-(IBAction)registerAction:(UIButton *)btnRegister;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)loginAction:(UIButton *)btnLogin {
    [UIView animateWithDuration:0.5 animations:^{
        NSLog(@"ggg");
        [self.iidd setFrame:CGRectMake(40, 0, 480, 30)];
    }];
    
    
}

-(IBAction)registerAction:(UIButton *)btnRegister{
    
}
@end
