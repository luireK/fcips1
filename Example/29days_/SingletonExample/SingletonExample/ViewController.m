//
//  ViewController.m
//  SingletonExample
//
//  Created by 이은경 on 2016. 6. 2..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField *nameTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)okBtn:(UIButton *)sender{
    
    NSLog(@"----------------------여기는 뷰컨트롤러 액션-----------------------------");
    
    [[DataCenter sharedInstance] setName:self.nameTF.text];
    [[DataCenter sharedInstance] printData];
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"----------------------여기는 viewWillAppear-----------------------------");
    [[DataCenter sharedInstance] printData];
}

@end
