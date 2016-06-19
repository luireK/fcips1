//
//  main.m
//  Queue
//
//  Created by 이은경 on 2016. 5. 30..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray+Queue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *queue = [NSMutableArray array];
        for(NSInteger i=1; i<=10; i++){
            [arr push:@(i)];
        }
        while (![queue empty]) {
            NSLog(@"%@",[queue pop]);
        }
    }
    return 0;
}
