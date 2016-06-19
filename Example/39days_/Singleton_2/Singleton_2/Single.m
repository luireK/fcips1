//
//  Single.m
//  Singleton_2
//
//  Created by 이은경 on 2016. 6. 17..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "Single.h"

@implementation Single

+(instancetype) singleTonMethod {
    
    static Single *defaultValue;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultValue = [[Single alloc] init];   //gcd
    });
    
    return defaultValue;
}

@end
