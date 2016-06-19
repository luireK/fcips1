//
//  ViewController.m
//  ExampleStep_3
//
//  Created by 이은경 on 2016. 6. 15..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate>

@property (nonatomic,strong) DataCenter *dataCenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped]; //group으로 해야 나눠져 보인다!
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    self.dataCenter = [DataCenter defaultData];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -TableView DataSource
// 섹션의 갯수를 생성
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

// 섹션안 row의 갯수를 생성
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%ld",[[self.dataCenter dataForSection:section] count]);
    return [[self.dataCenter dataForSection:section] count]; 

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: @"Cell"];
    }
    
    //Row색상 변경
    if (indexPath.section ==
        0) {
        cell.backgroundColor = [UIColor greenColor];
    }else{
        cell.backgroundColor = [UIColor grayColor];
    }
    
    //악세사리뷰 넣기
    
    if (indexPath.section == 0 ) {
        cell.accessoryType = UITableViewCellAccessoryDetailButton; //i 아이콘
        //cell.accessoryType =UITableViewCellAccessoryCheckmark; // 체크마크
    }else{
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator; // >
        //cell.accessoryType =UITableViewCellAccessoryDetailDisclosureButton; //i> 아이콘
    }
    //

    
    
    //데이터 센터에서 dataForSection으로 섹션을 받아옴.
    NSMutableArray *data = [self.dataCenter dataForSection:indexPath.section];
    //row에 들어갈 내용을 받아옴.
    NSString *text = [data objectAtIndex:indexPath.row];
    NSLog(@"%@",text);
    //cell안에 들어갈 내용
    cell.textLabel.text = text;
    
    return cell;
    
}


//헤더넣기
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @[@"패캠",@"날씨"][section];
}

//Row크기 키우기
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 1) {
        return 100.0;
    }
    return 60.0;
}

//row누르면(선택하면) 화면이 넘어감
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CampusTableViewController *cv = [[CampusTableViewController alloc] init];
    WeatherTableViewController *wv = [[WeatherTableViewController alloc] init];
    
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            cv.campusType = CampusTypeSchool;
        }else{
            cv.campusType = CampusTypeCamp;
        }
        [self.navigationController pushViewController:cv animated:YES];
    }else{
        if (indexPath.row == 0) {
            wv.weatherType = WeatherTypeKorea;
        }else{
            wv.weatherType = WeatherTypeWorld;
        }
        [self.navigationController pushViewController:wv animated:YES];
    }
   
}





@end
