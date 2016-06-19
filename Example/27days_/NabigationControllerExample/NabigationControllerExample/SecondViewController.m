//
//  SecendViewController.m
//  NabigationControllerExample
//
//  Created by 이은경 on 2016. 5. 31..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationItem setTitle:@"center"];
    [self.navigationController setToolbarHidden:NO];
    [self creatNavibar];
    [self creatToolbar];
}

-(void)creatToolbar{
    
    UIBarButtonItem *flecxiBlespaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UISegmentedControl *sortToggle = [[UISegmentedControl alloc]initWithItems: [NSArray arrayWithObjects:@"Acendeing",@"Decending",nil]];
    sortToggle.selectedSegmentIndex = 0;
    [sortToggle addTarget:self action:@selector(toggleSorting:) forControlEvents:UIControlEventValueChanged];
    
    UIBarButtonItem *sortToggleButtonItem = [[UIBarButtonItem alloc]initWithCustomView:sortToggle];
    self.toolbarItems = [NSArray arrayWithObjects:flecxiBlespaceItem, sortToggleButtonItem, flecxiBlespaceItem, nil];
}

-(void)toggleSorting:(UISegmentedControl *)toggleSorting{
    NSLog(@"ggggg");
}

-(void)creatNavibar{
    
    UISegmentedControl *segmentcontrol = [[UISegmentedControl alloc]initWithItems:
                                          [NSArray arrayWithObjects: @"up",
                                           @"down",
                                           nil]];
    
    [segmentcontrol addTarget:self action:@selector(segmentAction:)
             forControlEvents:UIControlEventValueChanged];
    
    segmentcontrol.frame = CGRectMake(0, 0, 90, 35);
    segmentcontrol.momentary = YES;
    
    UIBarButtonItem *segmentBarItem = [[UIBarButtonItem alloc]initWithCustomView:segmentcontrol];
    self.navigationItem.rightBarButtonItem = segmentBarItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)nextBtn:(id)sender{
    //다음화면으로 이동
    //1. 객체생성
    //2. 
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
