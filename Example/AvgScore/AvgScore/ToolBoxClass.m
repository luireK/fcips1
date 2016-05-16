//
//  ToolBoxClass.m
//  AvgScore
//
//  Created by 이은경 on 2016. 5. 10..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ToolBoxClass.h"

@implementation ToolBoxClass
{
    
    
}
//산술메소드 4가지 만들기 (다중매개변수)

//1. 더하기

-(NSInteger) sumNum1:(NSInteger)num1 num2:(NSInteger)num2{
    
    return num1 + num2;
}
//2. 빼기
-(NSInteger) subNum1:(NSInteger)num1 num2:(NSInteger)num2{
    return num1 - num2;
}

//3. 곱하기
-(NSInteger) multiNum1:(NSInteger)num1 num2:(NSInteger)num2{
    return num1* num2;
}

//4. 나누기
-(CGFloat) divNum1:(NSInteger)num1 num2:(NSInteger)num2{
    
    return num1 / num2;
}

//치수전환 메소드

//1. inch to cm (1 inch = 2.54cm)

-(CGFloat)inchToCm:(NSInteger)inch{
    
    CGFloat cm = inch / 2.45;
    return cm;
}


//2. m2 to 평 (1 m2 = 0.3025)

-(CGFloat)squreMeterToPyeng:(NSInteger)squreMeter{
    
    CGFloat pyeng = squreMeter * 0.3025;
    return pyeng;
}

//3. 화씨 to 섭씨 (-17.222222)

-(CGFloat)faToCel:(NSInteger)fahrenheit{
    
    CGFloat celcious = fahrenheit * 17.222222;
    return celcious;
}



//4. 데이터량(KB to MB to GB)

-(CGFloat)kbToMb:(int)kb{
    
    CGFloat mb = kb * 0.000977;
    
    if (1024 < mb){
        
        CGFloat gb = mb * 0.000977;
        return gb;
        
    }else{
        return mb;
    }
}





@end
