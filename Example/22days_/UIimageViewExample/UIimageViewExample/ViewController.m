//
//  ViewController.m
//  UIimageViewExample
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
    
        UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        [imgView setImage:[UIImage imageNamed:@"2014042400001.jpg"]];
        [imgView setContentMode:UIViewContentModeScaleAspectFill];
        //[imgView setContentMode:UIViewContentModeScaleAspectFit];
        //[imgView setContentMode:UIViewContentModeScaleToFill];
        [self.view addSubview:imgView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
