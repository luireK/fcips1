//
//  main.m
//  Question
//
//  Created by 이은경 on 2016. 5. 12..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"roundsNum = %f", [Question roundsNum:3.1234 decimalPoint:4]);
        NSLog(@"reversNum = %zd", [Question reversNum:2016]);
    }
    return 0;
}
