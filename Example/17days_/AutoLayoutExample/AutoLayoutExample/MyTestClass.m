//
//  MyTestClass.m
//  AutoLayoutExample
//
//  Created by 이은경 on 2016. 5. 17..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "MyTestClass.h"

@implementation MyTestClass

//alloc을 오버라이드 재정의
+ (instancetype) alloc {
    NSLog(@"My Test Class alloc");
    
    [self testClassMethod];
    //[self testInstanceMethod]; 호출불가
    
    return [super alloc];
}

- (void)dealloc{
    NSLog(@"My Test Class dealloc");
    
    [self testInstanceMethod];
    // [self testClassMethod]; 호출불가
    
    
    [[self class] testClassMethod];
    [MyTestClass testClassMethod];
    
    // 사용하고 있던 메모리 공간을 해제 해줘야 할 때
    // 객체가 메모리에서 해제되는 시점을 파악하고자 할 떄
}

- (void)testInstanceMethod{
    NSLog(@"testInstanceMethod called");
}

+ (void)testClassMethod{
    NSLog(@"testClassMethod called");
}

@end

