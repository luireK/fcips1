//
//  Casher.m
//  VendingMachine
//
//  Created by 이은경 on 2016. 5. 13..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "Casher.h"
#import "DrinkObject.h"

@interface Casher()

@property (nonatomic, assign) NSInteger inputMoney;

@end

@implementation Casher

- (instancetype)init
{
    self = [super init];
    if (self) {
        _inputMoney = 0;
    }
    return self;
}

/*동전추가*/

-(void)addCoin500
{
    self.inputMoney += 500;
}

-(void)addCoin100
{
    self.inputMoney += 100;
}

-(BOOL)buyDrink:(DrinkObject *)drink
{
    if (self.inputMoney >= drink.cost) {
        self.inputMoney -= drink.cost;
        return YES;
    }else{
        return NO;
    }
    return NO;
}

-(NSDictionary *)changeMoney
{
    NSMutableDictionary *changeDic = [[NSMutableDictionary alloc] initWithDictionary:@{@"500":@0,@"100":@0}];
    
    if (self.inputMoney >= 500) {
        NSInteger coin500 = self.inputMoney /500;
        
        [changeDic setValue:[NSNumber numberWithInteger:coin500] forKey:@"500"];
        
        self.inputMoney %= 500;
    }
    
    if (self.inputMoney >= 100) {
        NSInteger coin100 = self.inputMoney /100;
        
        [changeDic setValue:[NSNumber numberWithInteger:coin100] forKey:@"100"];
        
        self.inputMoney %= 100;
    }
    
    self.inputMoney %= 0;
    return changeDic;

}
@end
