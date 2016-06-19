//
//  WeatherTableViewController.h
//  ExampleStep_3
//
//  Created by 이은경 on 2016. 6. 15..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, WeatherType){
    WeatherTypeKorea = 0,
    WeatherTypeWorld
};

@interface WeatherTableViewController : UITableViewController

@property WeatherType weatherType;

@end
