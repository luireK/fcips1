//
//  SettingTableViewCell.m
//  CustomTable
//
//  Created by 이은경 on 2016. 6. 8..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "SettingTableViewCell.h"

@implementation SettingTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
}

- (void)switchValueChanged:(UISwitch *)sender {
    NSLog(@"Switch %d", sender.isOn);
    [self.delegate settingTableViewCellSwichValueChanged:self isOn:sender.isOn];
}

//그려질때마다 불러오는 것
- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
}

-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.settingSwich = [[UISwitch alloc] init];
    self.accessoryView = self.settingSwich;
    [self.settingSwich addTarget:self
                          action:@selector(switchValueChanged:)
                forControlEvents:UIControlEventValueChanged];
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
