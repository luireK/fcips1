//
//  ViewController.m
//  ExampleStep_1
//
//  Created by 이은경 on 2016. 6. 13..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController () <UITextFieldDelegate, UIGestureRecognizerDelegate, UINavigationControllerDelegate>

@property (nonatomic, weak) UITextField *tf;
@property (nonatomic, weak) UIButton * btn;
@property (nonatomic, weak) UILabel *lb;
@property (nonatomic, weak) UIButton *linkBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *mainView = self.view;
    
    //텍스트필드
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(20, 80, 300, 35)];
    tf.borderStyle = UITextBorderStyleLine;
    tf.delegate = self;
    self.tf = tf;
    [mainView addSubview:tf];
    
    
    //버튼
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(320, 80, 80, 35)];
    [btn setTitle:@"입력완료" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(touchUpInSideBtn:) forControlEvents:UIControlEventTouchUpInside];
    self.btn = btn;
    [mainView addSubview:btn];
    
    //라벨
    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(20, 120, 340, 35)];
    lb.textAlignment = NSTextAlignmentLeft; //
    self.lb = lb;
    [mainView addSubview:lb];
    
    //링크버튼
    UIButton *linkBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 150, 150, 35)];
    [linkBtn setTitle:@"다음화면으로 이동" forState:UIControlStateNormal];
    [linkBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [linkBtn addTarget:self action:@selector(nextLinkBtn:) forControlEvents:UIControlEventTouchUpInside]; //누르면 새로운화면.
    self.linkBtn = linkBtn;
    [mainView addSubview:linkBtn];
    
    //제스쳐
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
//    /*UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(recognizedTap:)];
//    액션쓸때 */
    tap.delegate = self;
    [mainView addGestureRecognizer:tap];
    
}

- (void)nextLinkBtn:(UIButton *)sender {
    SecondViewController *secondView = [[SecondViewController alloc]initWithNibName:@"SecondViewController"
                                                                             bundle:nil];
    [secondView setData:self.tf.text];
    
    [self.navigationController pushViewController:secondView animated:YES];
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    [self.tf endEditing:YES];
    return YES;
}

//-(IBAction)recognizedTap:(id)sender{
//    [self.tf endEditing:YES];
//} 액션쓸때

-(void)touchUpInSideBtn:(UIButton *)sender {
    self.lb.text = self.tf.text;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    
    [textField endEditing:YES];
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    self.lb.text = self.tf.text;
    
   //[textField endEditing:YES];
    [textField resignFirstResponder];
    
    //self.tf.text = nil;
    self.tf.text = @" ";
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
