//
//  ViewController.m
//  UITextFieldExample
//
//  Created by 이은경 on 2016. 5. 26..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UITextField *myTF2;
@property UILabel *_myLb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *myTF = [[UITextField alloc]initWithFrame:CGRectMake(30, 100, 100, 40)];
    myTF.placeholder = @"입력하세요";
    myTF.delegate = self;
    myTF.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:myTF];
    
    UITextField *myTF2 = [[UITextField alloc]initWithFrame:CGRectMake(30, 300, 100, 40)];
    myTF2.placeholder = @"입력하세요";
    myTF2.delegate = self;
    myTF2.borderStyle = UITextBorderStyleLine;
    self.myTF2 = myTF2;
    [self.view addSubview:myTF2];

}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"call textFieldShouldBeginEditing");
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"call textFieldDidEndEditing");
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    NSInteger tagNum = textField.tag;
    
    if (tagNum ==1 ) {
        [self.myTF2 becomeFirstResponder];
    }else if (tagNum == 2){
        [textField resignFirstResponder];
    }else{
        NSLog(@"안불릴걸");
    }
    NSLog(@"call return delegate method");
    return NO;
//
//    UITextField *tf = [[UITextField alloc]initWithFrame:CGRectMake(30, 100, 300, 35)];
//    tf.placeholder = @"입력하셈";
//    tf.delegate = self;
//    tf.borderStyle = UITextBorderStyleLine;
//    [tf.self addSubview:tf];
//    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn setFrame:CGRectMake(30, 105, 50, 35)];
//    [btn addTarget:self action:@selector(onTouchUpInsideButton:) forControlEvents:UIControlEventTouchUpInside];
//    [btn setTitle:@"확인" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [self.view addSubview:tf];
//    
//    UILabel *lb = [[UILabel alloc]initWithFrame:CGRectMake(60, 100, 300, 35)];
//    __myLb = lb;
//    lb.textColor = [UIColor blackColor];
//    lb.textAlignment = NSTextAlignmentCenter;
    
}

-(void)onTouchUpInsideButton:(UIButton *)sender{
    
        __myLb.text = [NSString stringWithFormat:@""];
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
