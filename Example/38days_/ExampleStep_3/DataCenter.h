//
//  DataCenter.h
//  ExampleStep_3
//
//  Created by 이은경 on 2016. 6. 15..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CampusTableViewController.h"
#import "WeatherTableViewController.h"

@interface DataCenter : NSObject

+ (instancetype)defaultData;
- (NSMutableArray *)dataForSection:(NSInteger)section;
- (NSArray *)dataForCampus:(CampusType)type;
- (NSArray *)dataForWeather:(WeatherType)type;


@end
