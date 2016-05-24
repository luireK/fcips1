//
//  MyClass.h
//  ArcExample
//
//  Created by 이은경 on 2016. 5. 19..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject {
    NSInteger _age;  //내부변수에 언더바를 붙이는건 관용적인 표현이다.
}

- (NSInteger)age;
- (void)setAge:(NSInteger)age;

@property(strong, nonatomic) NSString *name; //nonatomic 쓰레드에 관한 키워드. 쓰레드락과 관련된 옵션

@end
