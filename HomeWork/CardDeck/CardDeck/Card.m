//
//  Card.m
//  CardDeck
//
//  Created by 이은경 on 2016. 5. 15..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "Card.h"

@implementation Card
{
    NSString * _type;
    NSInteger _number;
    NSString * _color;          // 인스턴트 변수
}

- (void)setType:(NSString*) type     // 인스턴트 메소드
{
    _type = type;
}

- (void)setNumber: (NSInteger) number
{
    _number = number;
}

- (void)setColor: (NSString *) color
{
    _color = color;
}

- (NSString *) getType
{
    return _type;
}

- (NSInteger) getNumber
{
    return _number;
}

- (NSString *) color
{
    return _color;
}


@end
