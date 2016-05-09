//
//  main.m
//  D-day HomeWork
//

#import <Foundation/Foundation.h>


int eventDate;
bool isLeafYear(int year);
int lastDayOfMonth(int month, int year);
int totalDayWithDate(int date);

void setEventDate(int date){
    eventDate = date;
}

void calculationDday(int today){
    
    int afterDay = eventDate;
    int beforeDay = today;
    int finalresult = 0;

    
    //이벤트날짜가 지났는지 체크 (swap)
    bool eventDateCheck;
    
    if (today - eventDate >0)
    {
        afterDay = today;
        beforeDay = eventDate;
        eventDateCheck = true;
    }else
    {
        afterDay = eventDate;
        beforeDay = today;
        eventDateCheck = false;
    }
    
    //년도차이 계산 후 일자 더하기
    int bYear = beforeDay / 10000;
    int aYear = afterDay / 10000;
    
    finalresult += (aYear - bYear) * 365;
    
    for (int i = bYear; i < aYear; i++){
        if(isLeafYear(i)){
            
            finalresult++;
        }
    }
    
    
    finalresult += (totalDayWithDate(afterDay) - totalDayWithDate(beforeDay));
    

    if(eventDateCheck){
        printf("-%d 남았습니다.",finalresult);
    }else{
        printf("+%d 지났습니다.",finalresult);
    }
    


}

int totalDayWithDate(int date){
    //년
    int year = date/10000;
    
    //월
    int month = (date%10000) / 100;
    
    //일 (5월이라면 1~4월까지 일자)
    int day = (date%10000) % 100;
    
    int count = 0;
    
    for(int i = 1; i < month; i++){
        count += lastDayOfMonth(i, year);
    }
    
    count += day;

    return count;
}

//각 월의 마지막날 구하기
int lastDayOfMonth(int month, int year){
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
            if(isLeafYear(year)){
                dayCount = 29;
            }
            else{
                dayCount = 28;
            }
            
        default:
            dayCount = 30;
            break;
    }
    return dayCount;
}

//윤년 체크
bool isLeafYear(int year){
    bool result;

    if((year % 4 == 0 && year % 100!= 0) ||year % 400 == 0){
        result = true;
    }
    else{
        result = false;
    }
    return result;
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        setEventDate(20160531);
        calculationDday(20161225);
    }
    return 0;
}
