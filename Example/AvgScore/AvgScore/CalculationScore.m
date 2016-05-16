//
//  CalculationScore.m
//  AvgScore
//
//  Created by 이은경 on 2016. 5. 10..
//  Copyright © 2016년 EK Lee. All rights reserved.
//



#import "CalculationScore.h"

@implementation CalculationScore
{
    NSMutableArray *subjects;
}

//과목점수을 추가하는 함수

- (void)addSubjectScore:(NSUInteger)score
{
    //초기화
    if (subjects == nil){
        subjects = [[NSMutableArray alloc] initWithCapacity:1];
    
}
    //NSNumber(참조형 타입)으로 변환
    //numberWithInteger NSNumber Class Method
    NSNumber *scoreNum = [NSNumber numberWithInteger:score];
    
    //어레이에 추가
    [subjects addObject:scoreNum];
}

//과목총점
- (NSInteger)totalScore
{
    NSInteger totalScore = 0;
    for (NSNumber *score in subjects){
        totalScore += score.integerValue;
    }
    return totalScore;
}

//평균 구하기
- (CGFloat)averageScore
{
    //과목의 점수가 1개 이상일때
    if (subjects.count > 0){
    CGFloat averageS = ((CGFloat)[self totalScore])/subjects.count;
        
        return averageS;
    }else
    {//과목점수가 없을때
        return 0;
    }
}
// 시험점수를 받아서 해당점수의 등급을 반환
    
- (NSString*)setScoreToGrade:(CGFloat)average // 메소드명 :매개변수(받을 파라미터)
{
    CGFloat avg = average; //
    
        if (avg > 95){
            return @"A+";
        }else if(avg > 90){
            return @"A";
        }else if(avg > 85){
            return @"B+";
        }else if(avg > 80){
            return @"B";
        }else{
            return @"C+";
        }
}
    

//Grade받아서 Point로 변환

- (CGFloat)setGradeToPoint:(NSString *)grade
{
    NSString *gr = grade;
    CGFloat point;
    
    if ([gr isEqualToString:@"A+"]){
        point = 4.5;
    }else if([gr isEqualToString:@"A"]){
        point = 4.0;
    }else if([gr isEqualToString:@"B+"]){
        point = 3.5;
    }else if([gr isEqualToString:@"B"]){
        point = 3.0;
    }else{
        point = 2.5;
    }
    return point;
}

@end
