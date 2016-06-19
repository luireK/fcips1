//
//  FirstViewController.m
//  ExampleStep_2
//
//  Created by 이은경 on 2016. 6. 14..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController () <UITextViewDelegate, UIGestureRecognizerDelegate>

@property (nonatomic, weak) IBOutlet UITextView *tv;
@property (nonatomic, weak) IBOutlet UILabel *lb;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;
@property (weak, nonatomic) IBOutlet UIButton *modalViewBtn;



@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tv.delegate = self;
    
}

//화면을 누르면 키보드가 내려감
- (IBAction)touched:(id)sender {
    
    [self.tv endEditing:YES];

}

//textview에서 입력(수정)을 하면 label에 동시에 적용
- (void)textViewDidChange:(UITextView *)textView{
    
    self.lb.text = self.tv.text;
    
}

//라벨에 들어있는 값을 저장

- (void)textViewDidEndEditing:(UITextView *)textView{
    [[NSUserDefaults standardUserDefaults] setObject: self.lb.text forKey:@"textViewData"];
    [[NSUserDefaults standardUserDefaults] synchronize];//+save
}

// 버튼1을 누르면 화면이 넘어감
- (IBAction)nextBtnAction:(id)sender{
    
    NSLog(@"next touched");
    SecondViewController *secondView = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    
    [self.navigationController pushViewController:secondView animated:YES];
}

// 버튼2를 누르면 화면이 모달로 뜸

- (IBAction)modalViewBtnAction:(id)sender{
    SecondViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    
    [self presentViewController:view animated:YES completion:nil];
//    [self presentedViewController:view animated:YES completion:^{}];
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
