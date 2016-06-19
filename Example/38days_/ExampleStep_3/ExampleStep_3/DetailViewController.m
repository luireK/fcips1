//
//  DetailViewController.m
//  ExampleStep_3
//
//  Created by 이은경 on 2016. 6. 16..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "DetailViewController.h"
#import "DataCenter.h"

@interface DetailViewController ()

@property (nonatomic, weak) UILabel *lb;
@property (nonatomic, weak) UIButton *btn;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 100, 40)];
    lb.textAlignment = NSTextAlignmentLeft;
    lb.text = self.data;
    [self.view addSubview:lb];
    self.lb = lb;
        
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 120, 80, 40)];
    [btn setTitle:@"뒤로가기" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    self.btn =btn;
    [self.view addSubview:btn];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)clickBtn:(UIButton *)sender {
    //화면이 사라진다
    [self dismissViewControllerAnimated:YES completion:nil];
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
