//
//  Question.m
//  Question
//
//  Created by 이은경 on 2016. 5. 12..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "Question.h"

@implementation Question
{

}

//1. 마지막 수에서 반올림하기 - [question roundsNum:]
+(CGFloat)roundsNum:(CGFloat)num decimalPoint:(NSInteger)point;
{
    CGFloat result ;
    NSInteger temp = 1;
    
    for (int i = 1; i <point ; i++) {
        //result = result * 10;//i만큼 10을 곱해야.
        temp = temp * 10;
        result = ((NSInteger)((num * temp) + 0.5));
        result = result / temp;
        
    }
    
    return result;
    
}


//2. 년도와 일수 입력받아 출력 - [question inputYear afterDay:102]
/*
+(NSInteger)lastDayOfMonth:(NSInteger)month inputYear:(NSInteger)year;{  //달의 마지막 날 계산(확인)
    
    switch (month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            return 31;
            break;
        case 2:
            if((year%4 == 0 && year%100 != 0 )|| year%400 == 0){
                year = 29;
            }else{
                year = 28;
            }
            return year;
            
        case 4:
        case 6:
        case 9:
        case 11:
            return 30;
            break;
            
        default:
            break;
    }
}

+(NSInteger)inputYear:(NSInteger)year afterDay:(NSInteger)day;
{
    
}
        
*/


//3. 리버스함수[question reversNum:2016]


+ (NSInteger)reversNum:(NSInteger)num
{
    NSInteger resutlNum = 0;
    NSInteger tempNum = num;
    
    for (int i=0; tempNum>0; i++) {
        resutlNum = resutlNum*10+(tempNum%10);
        tempNum = tempNum/10;
    }
    return resutlNum;
}

@end
