//
//  Singletone.m
//  GcdExample
//
//  Created by 이은경 on 2016. 6. 17..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "Singletone.h"

@implementation Singletone

+(instancetype) singleToneMethod {
    
    static Singletone *defaultValue;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultValue = [[Singletone alloc] init];   //gcd
    });
    
    return defaultValue;
}

@end
