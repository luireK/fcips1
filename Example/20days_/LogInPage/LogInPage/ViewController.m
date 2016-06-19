//
//  ViewController.m
//  LogInPage
//
//  Created by 이은경 on 2016. 5. 23..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"



@interface ViewController () 

//텍스트필드와 오토레이아웃구성과 이어주기 위해 선언.
@property (nonatomic, weak) IBOutlet UITextField *iidd;
@property (nonatomic, weak) IBOutlet UITextField *ps;

//버튼 액션을 선언.
//-(IBAction)loginAction:(UIButton *)btnLogin;
//-(IBAction)registerAction:(UIButton *)btnRegister;

@end

@implementation ViewController

-(BOOL)isCheckLoginWithID:(NSString *)userID userPW:(NSString *) userPW {
    
    if (userID.length > 0 && userPW.length > 0) {
        //모두 작성
        if([[DataCenter shardInstance] isCheckLoginWithID:userID withPW:userPW]){
            return YES;
        }else{
            //alert띄우기 - 계정 정보가 잘못되었습니다.
            UIAlertController *errorID = [UIAlertController alertControllerWithTitle:@"계정정보가 잘못되었습니다."
                                                                             message:@"계정정보가 잘못되었습니다."
                                                                      preferredStyle:<#(UIAlertControllerStyle)#>]
        }
    }else{
        
    }
    
    //alert 띄우기 - 작성을 마저해주세요
    
    return NO;
}

//segue control
/*세그로 이동 전 이동을 허용할 것인가 확인.
 로그인 화면으로 이동시 : 로그인 여부 확인
 회원가입 화면으로 이동시 : 바로 이동
 */
-(BOOL)shouldPerformWithIdentifier:(NSString *)identifier sender:(id)sender {
    
    if ([identifier isEqualToString:@"LOGIN_TO_MAIN"]) {
        if ([self isCheckLoginWithID:self.iidd.text userPW:self.ps.text]) {
            return YES;
        }
        else{
            return NO;
        }
    } else {
        return YES;
    }
}

// 이동이 전해진 후 메인화면으로 이동시 메인 객체에 아이디 전달

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"LOGIN_TO_MAIN"])
    {
        [[DataCenter shardInstance] setAutoLogin:YES];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)loginBtn:(UIButton *)sender {
    [UIView animateWithDuration:0.5 animations:^{
        NSLog(@"ggg");
        [self.iidd setFrame:CGRectMake(40, 0, 480, 30)];
    }];
    
    
}

-(IBAction)registerAction:(UIButton *)btnRegister{
    
}
@end
