//
//  ToolBoxClass.h
//  AvgScore
//
//  Created by 이은경 on 2016. 5. 10..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolBoxClass : NSObject

-(NSInteger) sumNum1:(NSInteger)num1 num2:(NSInteger)num2;
-(NSInteger) subNum1:(NSInteger)num1 num2:(NSInteger)num2;
-(NSInteger) multiNum1:(NSInteger)num1 num2:(NSInteger)num2;
-(CGFloat) divNum1:(NSInteger)num1 num2:(NSInteger)num2;

-(CGFloat) inchToCm:(NSInteger)inch;
-(CGFloat) squreMeterToPyeng:(NSInteger)squreMeter;
-(CGFloat) faToCel:(NSInteger)fahrenheit;
-(CGFloat) kbToMb:(int)kb;

@end
