//
//  ViewController.m
//  UIButtonExample
//
//  Created by 이은경 on 2016. 5. 26..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, weak) UILabel *myLabel;

@property (nonatomic, weak) UIButton *selectedBtn;
@end



@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.tag =1;
//    [btn setFrame:CGRectMake(30, 150, 100, 35)];
//    [btn addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [btn setTitle:@"1번" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
//    [self.view addSubview:btn];
//    
//    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn1.tag =2;
//    [btn1 setFrame:CGRectMake(140, 150, 100, 35)];
//    [btn1 addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [btn1 setTitle:@"1번" forState:UIControlStateNormal];
//    [btn1 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    [btn1 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
//    [btn1 setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
//    [self.view addSubview:btn];
//    
//    
//    }
//
//- (void)onTouchUpInsideBtn:(UIButton *)sender{
//    
//    if (sender.selected) {
//        sender.selected = NO;
//    }else{
//        sender.selected = YES;
//    }
//    
//    
//    NSInteger selectedBtnNum = sender.tag;
//    switch (selectedBtnNum) {
//        case 1 :
//            NSLog(@"울루랄라");
//            break;
//            
//        case 2:
//            NSLog(@"닐리리야");
//            break;
//            
//        default:
//            break;
//    }
//    
//    NSLog(@"%ld번 버튼이 눌렸습니다.", (long)sender.tag);
//

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = 1;
    [button setFrame:CGRectMake(30, 60, 150, 35)];
    [button addTarget:self action:@selector(onTouchUpInsideButton:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"1번 버튼" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor orangeColor]];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [self.view addSubview:button];
   
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.tag = 2;
    [button2 setFrame:CGRectMake(140, 60, 150, 35)];
    [button2 addTarget:self action:@selector(onTouchUpInsideButton:) forControlEvents:UIControlEventTouchUpInside];
    [button2 setTitle:@"2번 버튼" forState:UIControlStateNormal];
    [button2 setBackgroundColor:[UIColor orangeColor]];
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.tag = 3;
    [button3 setFrame:CGRectMake(30, 150, 150, 35)];
    [button3 addTarget:self action:@selector(onTouchUpInsideButton:) forControlEvents:UIControlEventTouchUpInside];
    [button3 setTitle:@"3번 버튼" forState:UIControlStateNormal];
    [button3 setBackgroundColor:[UIColor orangeColor]];
    [button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [self.view addSubview:button3];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    button4.tag = 4;
    [button4 setFrame:CGRectMake(140, 150, 150, 35)];
    [button4 addTarget:self action:@selector(onTouchUpInsideButton:) forControlEvents:UIControlEventTouchUpInside];
    [button4 setTitle:@"4번 버튼" forState:UIControlStateNormal];
    [button4 setBackgroundColor:[UIColor orangeColor]];
    [button4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [self.view addSubview:button4];
    
    UILabel *myLabel= [[UILabel alloc]initWithFrame:CGRectMake(30, 200, 180, 40)];
    _myLabel = myLabel;
    myLabel.textColor = [UIColor blackColor];
    myLabel.textAlignment= NSTextAlignmentCenter;
    [self.view addSubview: myLabel];
    
    

}
-(void)onTouchUpInsideButton:(UIButton *)sender{

    
    if (sender.selected == YES) {
        sender.selected = NO;
        _myLabel.text = @"선택된 버튼이 없습니다.";
    }else{
        self.selectedBtn.selected = NO;
        sender.selected = YES;
        _myLabel.text = [NSString stringWithFormat:@"선택된 버튼은 : %ld번 버튼", (long)sender.tag];
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    if (sender.selected == YES) {
//        sender.selected = NO;
//        _myLabel.text = @"선택된 버튼이 없습니다.";
//    }else{
//        self.selectedBtn.selected = NO;
//        sender.selected = YES;
//        NSLog(@"선택된 버튼은 : %ld번 버튼", (long)sender.tag);
//        _myLabel.text = [NSString stringWithFormat:@"선택된 버튼은 : %ld번 버튼", (long)sender.tag];
//    }
//
//    self.selectedBtn = sender;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
