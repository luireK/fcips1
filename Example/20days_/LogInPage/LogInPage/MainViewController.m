//
//  MainViewController.m
//  LogInPage
//
//  Created by 이은경 on 2016. 6. 2..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "MainViewController.h"
#import "DataCenter.h"

@interface MainViewController ()
<UITableViewDelegate, UITableViewDataSource>


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self. navigationController setNavigationBarHidden:YES];
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height) style: UITableViewStylePlain];
    tv.dataSource =self;
    tv.delegate = self;
    [self.view addSubview:tv];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return ;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return 10;
    }else{
        return 5;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    NSString *title = [NSString stringWithFormat:@"%zd_%zd", indexPath.section, indexPath.row];
    [cell.textLabel setText:title];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)logout:(id)sender{
    [[DataCenter shardInstance] setAutoLogin:NO];
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
