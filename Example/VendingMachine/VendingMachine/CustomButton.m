//
//  CustomButton.m
//  VendingMachine
//
//  Created by 이은경 on 2016. 5. 13..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "CustomButton.h"

@interface CustomButton ()

@property (nonatomic, weak) UIImageView *dringkImg;
@property (nonatomic, weak) UILabel *titleLB;
@property (nonatomic, weak) UIButton *actionBtn;

@end

@implementation CustomButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self createView];
    }
    return self;
}

-(void)createView
{
    UIImageView *dringkImg = [[UIImageView alloc] init];
    [self addSubview:dringkImg];
    self.dringkImg =dringkImg;
    
    UILabel *titleLB = [[UILabel alloc] init];
    titleLB.textAlignment = NSTextAlignmentCenter;
    titleLB.textColor = [UIColor blackColor];
    titleLB.font = [UIFont systemFontOfSize:15];
    [self addSubview:titleLB];
    self.titleLB = titleLB;
    
    UIButton *actionBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [actionBtn addTarget:self
                  action:@selector(onTouchupInsideActionBtn:)
        forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:actionBtn];
    self.actionBtn = actionBtn;

}

-(void)updateLayout
{
    [self.dringkImg setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - 22)];
    [self.titleLB setFrame:CGRectMake(0, self.frame.size.height - 22, self.frame.size.width, 22)];
    [self.actionBtn setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}

-(void)setTitle:(NSString *)title
{

    [self.titleLB setText:title];
}

-(void)setImageWithName:(NSString *)imageName
{
    [self.dringkImg setImage:[UIImage imageNamed:imageName]];
}

-(void)onTouchupInsideActionBtn:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(didSelectCustomButton:)]) {
        [self.delegate didSelectCustomButton:self];
    }

}

@end
