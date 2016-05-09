//
//  main.m
//  Object-C Example
//
//  Created by 이은경 on 2016. 5. 9..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>


//총점
NSInteger totalSubjects(NSArray *subjects){
    
    NSInteger totalScore = 0;
    
    for (NSNumber *score in subjects) {
        totalScore += score.integerValue;
    }
    
    return totalScore;
}

//평균

CGFloat averageSubjects(NSArray *subjects){
    
    CGFloat total = (CGFloat)totalSubjects(subjects);
    return total / subjects.count;
}


//Custom 구구단 프로그램


void updateGooGooDan(NSArray *danLists)
{
    
    for (NSNumber *dan in danLists) {
        for (NSInteger i=1; i<10;i++){
            NSLog(@"%zd x %zd = %zd", (dan.integerValue), i, (dan.integerValue)* i);
        }
        NSLog(@"---------");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    // insert code here...
    //NSArray *subjectList = @[@100, @89, @45, @56, @77];
    //CGFloat average = averageSubjects(subjectList);
    //NSLog(@"%f", average);
        NSArray *danlists = @[@3, @2, @7];
        updateGooGooDan(danlists); //
        
    }
    return 0;
}
