//
//  SecondViewController.m
//  SingletonExample
//
//  Created by 이은경 on 2016. 6. 2..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "SecondViewController.h"
#import "DataCenter.h"

@interface SecondViewController ()

@property (nonatomic, weak) IBOutlet UITextField *ageTF;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)okoBtn:(id)sender{
    NSLog(@"----------------------여기는 뷰컨트롤러 액션-----------------------------");
    [[DataCenter sharedInstance] setAge:self.ageTF.text.integerValue];
    [[DataCenter sharedInstance] printData];
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"----------------------여기는 viewWillAppear-----------------------------");
    [[DataCenter sharedInstance] printData];
    
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
