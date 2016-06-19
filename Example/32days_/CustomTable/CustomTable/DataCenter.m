//
//  DataCenter.m
//  CustomTable
//
//  Created by 이은경 on 2016. 6. 8..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "DataCenter.h"

static NSString *const keySoundSetting = @"UserSoundIsOn";
static NSString *const keyVibrateSetting = @"UserVibrateIsOn";


@interface DataCenter ()

@property (nonatomic, strong) NSArray *settingTableData;
@property (nonatomic, strong) NSArray *weatherData;
@property (nonatomic, strong) NSArray *settingHeaderTitle;


@end

@implementation DataCenter

+(instancetype)defaultData{
    static DataCenter *dataCenter =nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
        dataCenter.settingTableData = @[@[@"사운드", @"진동"], @[@"세계날씨", @"한국날씨"]];
        dataCenter.settingHeaderTitle = @[@"설정", @"날씨"];
    });
    
    return dataCenter;
}

- (NSInteger)numberOfSectionsForSettingTable{
    return [self.settingHeaderTitle count];
}

- (NSArray *)settingTableDataForSection:(NSInteger)seciton {
    return (NSArray *)self.settingTableData[seciton];
}

- (NSInteger)numberOfRowsForSettingTable:(NSInteger)seciton {
    return [[self settingTableDataForSection:seciton] count];

}

- (NSString *)settingHeaderTitleForSection:(NSInteger)section {
    return (NSString *)self.settingHeaderTitle[section];
    
}

- (void)setSetting:(SettingRow)function isOn:(BOOL)isOn{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    
    NSString *key = nil;
    
    if (function == settingRowSound) {
        key = keySoundSetting;
    } else {
        key = keyVibrateSetting;
    }
    
    [userDefault setBool:isOn forKey:key];
    [userDefault synchronize];
}

- (BOOL)isOnForSetting:(SettingRow)function{
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    
    NSString *key = nil;
    
    if (function == settingRowSound) {
        key = keySoundSetting;
    } else {
        key = keyVibrateSetting;
    }
    return [userDefault boolForKey:key];
}

-(NSArray *)dataForWeather:(WeatherType)type{
    if (type == WeatherTypeKorea) {
        return @[@"서울", @"대전", @"대구", @"부산"];
    }else{
        return @[@"서울", @"도쿄", @"뉴욕", @"베를린", @"싱가폴", @"알마티"];
    }
}

@end
