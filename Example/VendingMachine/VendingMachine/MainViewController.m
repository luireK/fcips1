//
//  MainViewController.m
//  VendingMachine
//
//  Created by 이은경 on 2016. 5. 13..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "MainViewController.h"
#import "CustomButton.h"
#import "TrayBox.h"
#import "DrinkObject.h"
#import "Casher.h"

@interface MainViewController () <CustomButtonDelegate>

@property (nonatomic) TrayBox *trayBox;
@property (nonatomic) Casher *casher;

//메뉴 영역
@property (nonatomic, weak) IBOutlet UIView *menuView;
//500원 추가영역
@property (nonatomic, weak) IBOutlet UIView *input500CoinArea;
@property (nonatomic, weak) UILabel *title500CoinLb;
@property (nonatomic, weak) UIButton *add500CoinBtn;

//100원 추가영역IBOutlet
@property (nonatomic, weak) IBOutlet UIView *input100CoinArea;
@property (nonatomic, weak) UILabel *title100CoinLb;
@property (nonatomic, weak) UIButton *add100CoinBtn;
//돈 컨트롤 (남은돈 표시, 반환버튼)
@property (nonatomic, weak) IBOutlet UIView *moneyControlArea;
@property (nonatomic, weak) UILabel *moneyTitleLb;
@property (nonatomic, weak) UITextField *remainMoneyShowTF;
@property (nonatomic, weak) UIButton *moneyChangeBtn;
//상태표시화면
@property (nonatomic, weak) UITextView *displayView;

@property (nonatomic)NSMutableArray *drinkBtnList;

@end

@implementation MainViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.drinkBtnList = [[NSMutableArray alloc] initWithCapacity:4];
    self.trayBox = [[TrayBox alloc] init];
    self.casher = [[Casher alloc] init];
    [self creatView];
    [self updateLayout];
    
}


//UI 객체생성
-(void)creatView
{
//    UIView *menuView = [[UIView alloc]init];
//    [menuView setBackgroundColor:[UIColor clearColor]];
//    [self.view addSubview:menuView];
//    self.menuView = menuView;
    {
        for (int i =0; i < maximumDrinkCount;i++){
            DrinkObject *drinkData =[self.trayBox.drinkKinds objectAtIndex:i];
            CustomButton *drinkBtn = [[CustomButton alloc] init];
            [drinkBtn setBackgroundColor:[UIColor clearColor]];
            drinkBtn.tag =i;
            drinkBtn.delegate=self;
            [drinkBtn setTitle:drinkData.name];
            [drinkBtn setImageWithName:[NSString stringWithFormat:@"drink%d", i+1]];
            [self.menuView addSubview:drinkBtn];
            
            [self.drinkBtnList addObject:drinkBtn];
            
        }
    
    }
    
    UIView *input500CoinArea = [[UIView alloc]init];
    [input500CoinArea setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:input500CoinArea];
    self.input500CoinArea = input500CoinArea;
    {
        UILabel *title500CoinLb = [[UILabel alloc]init];
        title500CoinLb.text = @"500원";
        title500CoinLb.textColor = [UIColor blackColor];
        title500CoinLb.textAlignment = NSTextAlignmentRight;
        [input500CoinArea addSubview:title500CoinLb];
        self.title500CoinLb = title500CoinLb;
        
        UIButton *add500CoinBtn = [UIButton buttonWithType:UIButtonTypeContactAdd];
        add500CoinBtn.tag = 500;
        [add500CoinBtn addTarget:self
                          action:@selector(onTouchupInsideAddCoin:)
                forControlEvents:UIControlEventTouchUpInside];
        [input500CoinArea addSubview:add500CoinBtn];
        self.add500CoinBtn = add500CoinBtn;

    }
    
    UIView *input100CoinArea = [[UIView alloc]init];
    [input100CoinArea setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:input100CoinArea];
    self.input100CoinArea = input100CoinArea;
    {
        UILabel *title100CoinLb = [[UILabel alloc]init];
        title100CoinLb.text = @"100원";
        title100CoinLb.textColor = [UIColor blackColor];
        title100CoinLb.textAlignment = NSTextAlignmentRight;
        [input100CoinArea addSubview:title100CoinLb];
        self.title100CoinLb = title100CoinLb;
        
        UIButton *add100CoinBtn = [UIButton buttonWithType:UIButtonTypeContactAdd];
        add100CoinBtn.tag = 100;
        [add100CoinBtn addTarget:self
                          action:@selector(onTouchupInsideAddCoin:)
                forControlEvents:UIControlEventTouchUpInside];
        [input100CoinArea addSubview:add100CoinBtn];
        self.add100CoinBtn = add100CoinBtn;
        
    }
    
//    UIView *moneyControlArea = [[UIView alloc]init];
//    [moneyControlArea setBackgroundColor:[UIColor clearColor]];
//    [self.view addSubview:moneyControlArea];
//    self.moneyControlArea = moneyControlArea;
    {
    
        UILabel *moneyTitleLb = [[UILabel alloc] init];
        moneyTitleLb.text = @"Money";
        moneyTitleLb.textColor = [UIColor blackColor];
        moneyTitleLb.font = [UIFont systemFontOfSize:15];
        [self.moneyControlArea addSubview:moneyTitleLb];
        self.moneyTitleLb = moneyTitleLb;
        
        UITextField *remainMoneyShowTF = [[UITextField alloc] init];
        remainMoneyShowTF.userInteractionEnabled = NO;
        remainMoneyShowTF.borderStyle = UITextBorderStyleLine;
        remainMoneyShowTF.textAlignment =NSTextAlignmentCenter;
        [self.moneyControlArea addSubview:remainMoneyShowTF];
        self.remainMoneyShowTF = remainMoneyShowTF;
        
        //잔돈반환버튼
        UIButton *moneyChangeBtn = [[UIButton alloc] init];
        [moneyChangeBtn setTitle:@"반환" forState:UIControlStateNormal];
        [moneyChangeBtn addTarget:self
                           action:@selector(onTouchupInsideMoneyChangeBtn:)
                 forControlEvents:UIControlEventTouchUpInside];
        [moneyChangeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [moneyChangeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
        [self.moneyControlArea addSubview:moneyChangeBtn];
        self.moneyChangeBtn = moneyChangeBtn;
        
    }
    
    UITextView *displayView = [[UITextView alloc]init];
    [displayView setBackgroundColor:[UIColor grayColor]];
    [displayView setTextColor:[UIColor whiteColor]];
    displayView.editable = NO;
    [self.view addSubview:displayView];
    self.displayView = displayView;
}
//UI레이아웃수정
-(void)updateLayout
{

    const CGFloat SIDE_MARGIN =30;
    NSUInteger offsetY = 20;
    
    [self.menuView setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width -  SIDE_MARGIN*2, 370)];
    offsetY += self.menuView.frame.size.height +10;
    {
        CGSize drinkBtnSize =CGSizeMake(140, 175);
        for (int i = 0; i<self.drinkBtnList.count; i++) {
            NSInteger row = i/2;
            NSInteger col = i%2;
            
            CustomButton *drinkBtn = self.drinkBtnList[i];
            [drinkBtn setFrame:CGRectMake(10 + col*(drinkBtnSize.width)+(col*20), row*(drinkBtnSize.height + 20), drinkBtnSize.width, drinkBtnSize.height)];
            
            [drinkBtn updateLayout];
        }
    
    
    }
    
    [self.input500CoinArea setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width - SIDE_MARGIN*2, 30)];
    offsetY += self.input500CoinArea.frame.size.height;
    {
        [self.title500CoinLb setFrame:CGRectMake(0,0,265,self.input500CoinArea.frame.size.height)];
        [self.add500CoinBtn setFrame:CGRectMake(270, 0, 30, 30)];
    }
    
    [self.input100CoinArea setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width - SIDE_MARGIN*2, 30)];
    offsetY += self.input100CoinArea.frame.size.height +10;
    {
        [self.title100CoinLb setFrame:CGRectMake(0,0,265,self.input500CoinArea.frame.size.height)];
        [self.add100CoinBtn setFrame:CGRectMake(270, 0, 30, 30)];
    }
    
    [self.moneyControlArea setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width - SIDE_MARGIN*2, 30)];
    offsetY += self.moneyControlArea.frame.size.height +10;
    {
        [self.moneyTitleLb setFrame:CGRectMake(0, 0, 61, 30)];
        [self.remainMoneyShowTF setFrame:CGRectMake(63, 0, 200, 30)];
        [self.moneyChangeBtn setFrame:CGRectMake(270, 0, 35, 30)];
    }
    
    [self.displayView setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width - SIDE_MARGIN*2, 145)];
    offsetY += self.displayView.frame.size.height;
}


//action

-(IBAction)didSelectCustomButton:(CustomButton *)customBtn
{
    DrinkObject *drinkObj = [self.trayBox.drinkKinds objectAtIndex:customBtn.tag];
    
    if([self.casher buyDrink:drinkObj])
    {//구매완료
        NSString *successMsg = [NSString stringWithFormat:@"%@1개가 나왔습니다.\n", drinkObj.name];
        [self.displayView setText:[self.displayView.text stringByAppendingString:successMsg]];
        [self.remainMoneyShowTF setText:[NSString stringWithFormat:@"%zd",(long)self.casher.inputMoney]];
    }else{
        //구매실패
        [self.displayView setText:[self.displayView.text stringByAppendingString:@"잔액이 부족합니다\n"]];
    }
    
}

-(IBAction)onTouchupInsideMoneyChangeBtn:(UIButton *)sender
{
    //{@"500":count, @"100":count}
    NSDictionary *coinDic = [self.casher changeMoney];
    NSNumber *coin500Count = coinDic[@"500"];
    NSNumber *coin100Count = coinDic[@"100"];
    NSInteger changeMoney = (500*coin500Count.integerValue) + (100*coin100Count.integerValue);
    //남은돈 표시
    [self.remainMoneyShowTF setText:[NSString stringWithFormat:@"%zd", (long)self.casher.inputMoney]];
    //로그표시
    NSString *changeMsg = [NSString stringWithFormat:@"거스름돈은 %ld입니다.(500원 동전 %@개, 100원 동전 %@개)\n",changeMoney,coin500Count,coin100Count];
    [self.displayView setText:[self.displayView.text stringByAppendingString:changeMsg]];
    
    
}

-(IBAction)onTouchupInsideAddCoin:(UIButton *)sender
{
    NSInteger tag = sender.tag;
    if (tag == 100){
        [self.casher addCoin100];
    }else if (tag == 500){
        [self.casher addCoin500];
    }else{
        NSLog(@"tagr값이 잘못 되었습니다.");
    }
    [self.remainMoneyShowTF setText:[NSString stringWithFormat:@"%zd원이 추가되었습니다.",(long)self.casher.inputMoney]];
    
}

@end
