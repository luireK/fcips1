//
//  DataCenter.m
//  ExampleStep_3
//
//  Created by 이은경 on 2016. 6. 15..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "DataCenter.h"
#import "CampusTableViewController.h"
#import "WeatherTableViewController.h"

@interface DataCenter()

@property (nonatomic, strong) NSMutableArray *firstSectionData;
@property (nonatomic, strong) NSMutableArray *secondSectionData;
@property (nonatomic, strong) NSArray *campusData;
@property (nonatomic, strong) NSArray *weatherData;

@end

@implementation DataCenter

//싱글턴 객체 생성

+(instancetype)defaultData {
    
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
        dataCenter.firstSectionData = [[NSMutableArray alloc] initWithObjects: @"School", @"Camp", nil];
        dataCenter.secondSectionData = [[NSMutableArray alloc] initWithObjects: @"한국날씨", @"세계날씨", nil];
    });
    
    return dataCenter;
}

//섹션안에 들어갈 데이터
- (NSMutableArray *)dataForSection:(NSInteger)section {
    if (section == 0) {
        return self.firstSectionData;
    }else
    {
        return self.secondSectionData;
    }
    return nil;
}

//섹션을 누르고 들어가면 나올 데이터

- (NSArray *)dataForCampus:(CampusType)type{
    if (type == CampusTypeSchool) {
        return @[@"iOS",@"Android",@"Web",@"Front"];
    }else{
        return @[@"iOS 입문", @"iOS 초급", @"iOS 중급"];
    }
}

- (NSArray *)dataForWeather:(WeatherType)type{
    if (type == WeatherTypeKorea) {
        return @[@"서울", @"대전", @"대구", @"부산", @"제주"];
                //@[@{@"서울":@"30.0"},@{@"대전":@"29.0"},@{@"대구":@"28.0"},@{@"부산":@"27.0"},@{@"제주":@"26.0"}];
    }else{
        return @[@"뉴욕", @"서울", @"도쿄", @"멜버른", @"타이페이"];
                //@[@{@"뉴욕":@"30.0"},@{@"서울":@"30.0"},@{@"도쿄":@"30.0"},@{@"멜버른":@"30.0"},@{@"타이페이":@"30.0"}];
    }
}

@end
