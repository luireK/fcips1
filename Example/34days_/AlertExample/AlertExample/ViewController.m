//
//  ViewController.m
//  AlertExample
//
//  Created by 이은경 on 2016. 6. 10..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickAlertButton:(id)sender {
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action){
                                                         NSLog(@"Alert");
                                                     }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소"
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             NSLog(@"Alert cancel");
                                                         }];
    UIAlertAction *destoryAction = [UIAlertAction actionWithTitle:@"파괴"
                                                           style:UIAlertActionStyleDestructive
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             NSLog(@"Alert destroy");
                                                         }];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"이게 alretTitle"
                                                                   message: @"alretstyle"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    

    [alert addAction:okAction];
    [alert addAction:cancelAction];
    [alert addAction:destoryAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}


- (IBAction)clickAlertSheetButton:(id)sender {
    
    UIAlertController *alertSheet = [UIAlertController alertControllerWithTitle: @"이게 AlertSheet"
                                                                   message: @"alretsheet"
                                                            preferredStyle:(UIAlertControllerStyleActionSheet)];
    
    UIAlertAction *okokAction = [UIAlertAction actionWithTitle:@"확인"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action){
                                                         NSLog(@"Alert");
                                                     }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소"
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             NSLog(@"Alert cancel");
                                                         }];
    UIAlertAction *destoryAction = [UIAlertAction actionWithTitle:@"파괴"
                                                            style:UIAlertActionStyleDestructive
                                                          handler:^(UIAlertAction * _Nonnull action) {
                                                              NSLog(@"Alert destroy");
                                                          }];
    
    
    [alertSheet addAction:okokAction];
    [alertSheet addAction:cancelAction];
    [alertSheet addAction:destoryAction];
    
    [self presentViewController:alertSheet animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
