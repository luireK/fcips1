//
//  main.m
//  ArcExample
//
//  Created by 이은경 on 2016. 5. 19..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"



int main(int argc, const char * argv[]) {
    
    MyClass *myInstance = [[MyClass alloc]init];
    
    [myInstance setName:@"야곰"];
    
    NSLog(@"%@", [myInstance name]);
    
    [myInstance setAge:10];
    
    NSLog(@"%ld", [myInstance age]);
    
    return 0;
}
