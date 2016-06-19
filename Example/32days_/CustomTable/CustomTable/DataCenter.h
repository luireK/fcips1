//
//  DataCenter.h
//  CustomTable
//
//  Created by 이은경 on 2016. 6. 8..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherTableViewController.h"


typedef NS_ENUM(NSInteger, SettingRow) {
    settingRowSound = 0,
    settingRowVibrate
};

@interface DataCenter : NSObject

+(instancetype)defaultData;
- (NSInteger)numberOfSectionsForSettingTable;
- (NSArray *)settingTableDataForSection:(NSInteger)seciton;
- (NSInteger)numberOfRowsForSettingTable:(NSInteger)seciton;
- (NSString *)settingHeaderTitleForSection:(NSInteger)section;
- (void)setSetting:(SettingRow)function isOn:(BOOL)isOn;
- (BOOL)isOnForSetting:(SettingRow)function;

-(NSArray *)dataForWeather:(WeatherType)type;
@end
