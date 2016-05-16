//
//  TrayBox.m
//  VendingMachine
//
//  Created by 이은경 on 2016. 5. 13..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "TrayBox.h"

@interface TrayBox()

@property  (nonatomic, nullable) NSArray *nameList;
@property  (nonatomic, nullable) NSArray *costList;
@property (nonatomic) NSArray *drinkKinds;


@end

@implementation TrayBox


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameList = @[@"Sprite",@"Fanta",@"Coca-Cola",@"Coca-Cola Zero"];
        self.costList = @[@1000,@900,@1500,@1300];
        [self createTray];
    }
    return self;
}

-(void)createTray
{
    NSMutableArray *drinkList = [[NSMutableArray alloc] init];
    for (int i =0; i< maximumDrinkCount; i++) {
        NSString *drinkName = _nameList[i];
        NSInteger drinkCost = ((NSNumber *)_costList[i]).integerValue;
        DrinkObject *drink = [[DrinkObject alloc] initWithName:drinkName cost:drinkCost];
        [drinkList addObject:drink];
    }
    self.drinkKinds = [[NSArray alloc] initWithArray:drinkList];
}

@end


