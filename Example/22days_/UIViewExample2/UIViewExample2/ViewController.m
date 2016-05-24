//
//  ViewController.m
//  UIViewExample2
//
//  Created by 이은경 on 2016. 5. 24..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    const CGFloat VIEW_MARGIN =20;
    CGSize labelSize = CGSizeMake(self.view.frame.size.width - VIEW_MARGIN*2, 30);
    CGFloat offsetY = VIEW_MARGIN;
    
    
    UIView *baseView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/2)];
    [baseView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:baseView];
    
    UILabel *firstLb = [[UILabel alloc]initWithFrame:CGRectMake(VIEW_MARGIN, offsetY,labelSize.width, labelSize.height)];
    firstLb.text= @"예제 화면 입니다.";
    firstLb.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview: firstLb];
    offsetY += firstLb.frame.size.height;
    
    UILabel *secondLb = [[UILabel alloc]initWithFrame:CGRectMake(VIEW_MARGIN, offsetY, labelSize.width, labelSize.height)];
    secondLb.text= @"예쁜 레이블 입니다.";
    secondLb.textColor = [UIColor redColor];
    secondLb.textAlignment=NSTextAlignmentRight;
    [self.view addSubview: secondLb];
    offsetY += secondLb.frame.size.height;
    
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(VIEW_MARGIN, offsetY, 300, 150)];
    [topView setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:topView];
    offsetY += topView.frame.size.height;
    UILabel *innerLb = [[UILabel alloc]initWithFrame:CGRectMake(0, topView.frame.size.height-labelSize.height, topView.frame.size.width, topView.frame.size.height)];
    innerLb.text= @"View위에 레이블입니다.";
    innerLb.textAlignment = NSTextAlignmentLeft;
    innerLb.textColor = [UIColor whiteColor];
    [self.view addSubview:innerLb];
    
    UILabel *thirdLb = [[UILabel alloc]initWithFrame:CGRectMake(VIEW_MARGIN, offsetY, labelSize.width, labelSize.height)];
    thirdLb.text= @"중앙에 있는 레이블입니다.";
    thirdLb.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview: thirdLb];
    offsetY += thirdLb.frame.size.height;
    
    UILabel *forthLb = [[UILabel alloc]initWithFrame:CGRectMake(VIEW_MARGIN, offsetY, labelSize.width, labelSize.height)];
    forthLb.text= @"폰트는 20입니다.";
    forthLb.textAlignment=NSTextAlignmentCenter;
    forthLb.font = [UIFont systemFontOfSize:20];
    [self.view addSubview: forthLb];
    offsetY += forthLb.frame.size.height;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
