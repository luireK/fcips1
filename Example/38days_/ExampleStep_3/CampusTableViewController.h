//
//  CampusTableViewController.h
//  ExampleStep_3
//
//  Created by 이은경 on 2016. 6. 15..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, CampusType) {
    CampusTypeSchool = 0,
    CampusTypeCamp
};

@interface CampusTableViewController : UITableViewController

@property (nonatomic) CampusType campusType;

@property (nonatomic) NSString *keyStr;
@end
