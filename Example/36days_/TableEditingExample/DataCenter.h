//
//  DataCenter.h
//  TableEditingExample
//
//  Created by 이은경 on 2016. 6. 9..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

/*<Foundation/Foundation.h>는 순수히 오브젝티브 씨언어 그 자체와 맥용개발의 기능만 가지고 있다. 
 코코아 터치 프레임워크기능의 전부를 가지고 있지는 않음. 그래서  <UIKit/UIKit.h>로 변경함.*/

#import <UIKit/UIKit.h>

@interface DataCenter : NSObject

+(instancetype)defaultData;
- (NSMutableArray *)dataForSection:(NSInteger)section;
- (void)insertNewItemInSecondSection;
-(void)removeFirstSectionItemAtIndex:(NSInteger)index;

@end
