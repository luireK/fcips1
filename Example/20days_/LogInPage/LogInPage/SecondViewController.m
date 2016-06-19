//
//  SecondViewController.m
//  LogInPage
//
//  Created by 이은경 on 2016. 6. 2..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "SecondViewController.h"
#import "DataCenter.h"

@interface SecondViewController ()

@end




@implementation SecondViewController


//회원가입

-(BOOL)requestSignUpWithID:(NSString *)userID pw:(NSString *)userPW reEnter:(NSString *)rePW{
    if (userID.length > 0 && userPW.length > 0) {
        if ([userPW isEqualToString:rePW]) {
            BOOL isSignUP = [DataCenter]
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registerBtn:(UIButton *)sender{
    
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
