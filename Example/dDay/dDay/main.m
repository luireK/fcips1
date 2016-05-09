//
//  main.m
//  dDay
//
//  Created by 이은경 on 2016. 5. 8..
//  Copyright © 2016년 EK Lee. All rights reserved.
//


#import <Foundation/Foundation.h>

void dDay(int cDay, int tDay){
    
    //리턴받을 디데이카운트
    int dDayCnt=0;
    
    //예정일 년도(현재년도만 윤년을 체크하기 때문에 무조건 365)
    int year= 365;
    
    //예정일 년도
    int cYear = cDay/10000;
    int cMonDay = cDay%10000;
    
    //예정일 달
    int cMonth = cMonDay/100;
    //예정일 날짜
    int cDate =  cMonDay%100;
    
    //오늘 년도
    int tYear = tDay/10000;
    int tMonDay = tDay%10000;
    
    //오늘 달
    int tMonth = tMonDay/100;
    //오늘 일
    int tDate =  tMonDay%100;
    
    //오늘(년도)가 윤년인지 체크 (1일경우 윤년 0일경우 윤년아님)
    int result = 1;
    
    //오늘년도-예정년도 (후에 +1해줌)
    int yearSub = tYear - cYear;
    
    //절대값작업
    if(yearSub<0){
        yearSub = -yearSub;
    }
    
    //윤년이면서
    if(result == 1){
        //4년주기가 아닌 경우
        if(yearSub<=3){
            //윤년은 1년 있고, 오늘-예정년도에 +1을 해준다
            dDayCnt = ((yearSub+1) * 365) +1;
            
            //아래 두개 각각 포문에서 1.예정년도의 기간(포함되는 기간이 아닌 포함안되는 기간), 2. 오늘년도의 기간(이하동문)을 감한다.
            for(int i = cMonth; i<=12; ++i){
                if(i==1||i==3||i==5||i==7||i==8||i==10||i==12){
                    if(i==cMonth){
                        year -= 31-cDate;
                    }else{
                        year -= 31;
                    }
                }else if(i==2){
                    if(i==cMonth){
                        year -= 28-cDate;
                    }else{
                        year -= 28;
                    }
                }else{
                    if(i==cMonth){
                        year -= 30-cDate;
                    }else{
                        year -= 30;
                    }
                }
            }
            dDayCnt = dDayCnt - year;
            year = 0;
            for(int i = 1; i<=tMonth; ++i){
                if(i==1||i==3||i==5||i==7||i==8||i==10||i==12){
                    if(i==tMonth){
                        year += tDate;
                    }else{
                        year += 31;
                    }
                }else if(i==2){
                    if(i==tMonth){
                        year += tDate;
                    }else{
                        year += 29;
                    }
                }else{
                    if(i==tMonth){
                        year += tDate;
                    }else{
                        year += 30;
                    }
                }
                
            }
            dDayCnt = dDayCnt - (366-year);
        }
    }
        
    
    
    printf("%d",dDayCnt);
    
    
    
    
    
}


int checkLeapYear(int year){
    int result;
    if ((year % 4 == 0 && year % 100 != 0)||(year % 400 == 0)){
        result=1;
    }else{
        result=0;
    }
    
    return result;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        dDay(20150403,20160508);
       
    }
    return 0;
}
