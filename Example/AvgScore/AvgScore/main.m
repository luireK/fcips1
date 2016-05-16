//
//  main.m
//  AvgScore
//
//  Created by 이은경 on 2016. 5. 10..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CalculationScore.h"
#import "ToolBoxClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //CalulationScore Class 객체 생성
        
        CalculationScore *csClass = [[CalculationScore alloc]init];
        
        //객체 메소드 실행
        [csClass addSubjectScore:100];
        [csClass addSubjectScore:85];
        [csClass addSubjectScore:75];
        
        CGFloat average = [csClass averageScore];
        NSLog(@"average =%f", average);
        
        ToolBoxClass *tbClass = [[ToolBoxClass alloc]init];
        
        //객체메소드 실행
        [tbClass sumNum1:90 num2:80];
         NSInteger sum = [tbClass sumNum1];
         NSLog(@"sum =%zd", sumNum1);
        
        //- (CGFloat)averageScore
        //- (NSString*)setScoreToGrade:(CGFloat)average;
        
       // - (CGFloat)setGradeToPoint:(NSString *)grade;
        
    }
    return 0;
}
