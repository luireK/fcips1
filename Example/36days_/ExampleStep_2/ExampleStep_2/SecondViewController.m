//
//  SecondViewController.m
//  ExampleStep_2
//
//  Created by 이은경 on 2016. 6. 14..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *secondLb;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
}


- (void) viewWillAppear:(BOOL)animated {
    
    //FirstViewController의 값을 던져준다.
    NSString *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"textViewData"]; //값을 받아옴.
    self.secondLb.text = data;
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
