//
//  main.m
//  FullReview
//
//  Created by 이은경 on 2016. 5. 11..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

//성적평균 구하기

//1. 프로그램 내 사용 할 변수 생성
int koreanScore = 0;
int mathScore = 0;
int scienceScore = 0;
int englishScore = 0;


//2. 과목 점수 넣는 함수

void setKoreanScore(int newScore){
    
    koreanScore = newScore;
}

void setMathScore(int newScore){
    
    mathScore = newScore;
}

void setScienceScore(int newScore){
    
    scienceScore = newScore;
}

void setEnglishScore(int newScore){
    
    englishScore = newScore;
}

//3. 과목 총점 구하는 함수

int totalS(){
    
    int totalScore = koreanScore + mathScore + scienceScore + englishScore;
    
    return totalScore;
}

//4. 과목 평균 구하는 함수

float avgS(){
    
    float averageScore = (float)totalS() /4;
    
    return averageScore;
}

//5. 평균 입력시 성적등급을 매긴다. (100~90: 1등급, 89~80: 2등급 ...)

int matchingGrade(float average){
    
    int grade;
    
    if(average>=90){
        grade = 1;
    }else if(average>=80){
        grade = 2;
    }else if(average>=70){
        grade = 3;
    }else{
        grade = 4;
    }
             return grade;
}

//6. 성적등급에 따라 장학금주기

void scholarshipWithGrade(int grade){
    
    switch(grade){
    case 1:
        printf("전액장학금을 주겠어\n");
            break;
    case 2:
        printf("50%%만 줄게\n");
            break;
    case 3:
        printf("25%%만 줄게\n");
            break;
    case 4:
        printf("미안 너 줄게없어\n");
            break;
    }
            
}

//7. 월의 마지막날 구하기

int lastDayOfMonth(int month){
    
    int dayCount = 0;
    
    switch (month) {
            
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            dayCount = 31;
            break;
            
        case 2:

            dayCount = 28;
            break;
        
        default:
           dayCount = 30;
            break;
    }
    
    return dayCount;
}

//8. 절대값구하기

int absoluteNum(int num){
    if (num<0){
        num = num * -1;
    }else{
        num = num * 1;
    }
    
    return num;
}

//9. 문자구분 : 문자 하나를 입력받이 이 문자가 소문자인지, 대문자인지, 숫자인지 구분

//10. 윤년구하기 : 윤년은 기본적으로 매 4년마다 돌아오나, 100으로 나눠 떨어지는 해는 윤년이 아니며, 또 그중 400으로 떨어지는 해는 윤년이다.

void checkLeapYear(int year){
    if( (year%4==0 && year%100 !=0 )|| year%400==0){
        printf("윤년이다");
    }else{
        printf("윤년이 아니다");
    }
}

//구구단 구현

void MultiplicationTable(int dan){
    
    int index = 1;
    int result = 0;
    
    while (index<10) {
        result = dan * index;
        index ++;
    }
    printf("%d",result);
    
}

//구구단 구현 for문으로

void getMultiplicationTable(dan){
    
    int rt = 0;
    
    for(int i=1;i<10;i++){
        rt = dan * i;
    }
}

//팩토리얼



//삼각수 구하기
int triangularNum(int num){
    
    int result=0;
    
    for(int i = 1; i >= 1; i++){
        result = result + i;
    }
    
    return result;
}

//삼각수 구하기2

void triangularsRangeNum(int num1, int num2){
    
    int rt= 0;
    
    for(int i=num1;i<=num2;i++){
        rt = rt + i;
        
        if(i % 5 == 0){
            printf("%d", rt);
        }
    }
}
//각 자리수 더하는 함수

int addAllNum

//369 게임 만들기 (max 29)

//369 게임 만들기(max 무제한)

/* 짝수 구분*/
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        setKoreanScore(90);
        setMathScore(80);
        setScienceScore(75);
        setEnglishScore(80);
        printf("내 점수의 총점은 %d 입니다.\n",totalS());
        printf("내 점수의 평균은 %f 입니다.",avgS());
        printf("내 성적등급은 %d입니다.\n",matchingGrade(85));
        
        
        

    }
    return 0;
}
