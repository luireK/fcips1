//
//  SettingTableViewCell.h
//  CustomTable
//
//  Created by 이은경 on 2016. 6. 8..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingTableViewCell;

@protocol SettingTableViewCellDelegate <NSObject>
//스위치의 값이 변경될 때 호출할 메서드
- (void)settingTableViewCellSwichValueChanged:(SettingTableViewCell *)cell isOn:(BOOL)isOn;

@end

@interface SettingTableViewCell : UITableViewCell

@property (nonatomic, strong) UISwitch *settingSwich;
@property (nonatomic, weak) id<SettingTableViewCellDelegate> delegate;
    //자신의 델리게이트는 델리게이트를 따르는(이 프로토콜을 따르는) id type이어도 상관이 없다.


@end
