//
//  main.m
//  [160505] Iteration Structure Example
//

#import <Foundation/Foundation.h>


//1. 절대값구하기

int absoluteNum(int num){
    if(num < 0){
        num = num * -1;
    }
    printf("%d\n",num);
    return num;
}


//2. 문자구분 : 문자 하나를 입력받아 이 문자가 소문자인지 대문자인지, 숫자인지 구분

void checkAlphabet(char alphabet){
    if (alphabet>='a' && alphabet<='z') {
        printf("소문자\n");
    }else if(alphabet>='A' && alphabet<='Z'){
        printf("대문자\n");
    }else if(alphabet>='0' && alphabet<='9'){
        printf("숫자\n");
    }else{
        printf("나도 모름");
    }
}

/*3. 윤년구하기 : 윤년은 기본적으로 매 4년마다 돌아오나, 100으로 나눠 떨어지는 해는 윤년이 아니며,
 또 그중 400으로 나눠 떨어지는 해는 윤년이다.*/

void checkLeapYear(int year){
    if ((year % 4 == 0 && year % 100 != 0)||(year % 400 == 0)){
        printf("윤년이다\n");
    }else{
        printf("윤년이 아니다\n");
    }
}

//구구단 for문으로

void getMultiplicationTable(int dan){
    for(int i = 1; i < 10; i++)
    {
        int result = dan * i;
        printf("%d\n",result);
    }
    
}

//팩토리얼
void factorial(int n){
    int rt = 1;
    for(int i = 1; i < n+1; i++){
        rt = rt * i ;
    }
    printf("%d\n", rt);
}

/*369게임
 3의 배수가 들어가면 *으로 표시. 나머지는 숫자로 표시.
 ex)game369(17) >> 1,2,*,4,5,*,7,8,*,10,11,12,*,14,15,*17
 */

void game(int n){
    for(int i = 1; i<= 29; i++){
        if((i % 10 == 3)||(i % 10 == 6)||(i % 10 == 9)){
            printf("*, ");
        }else{
            printf("%d, ",i);}
    }
}

//결과
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        absoluteNum(-124);
        checkAlphabet('4');
        checkLeapYear(2015);
        getMultiplicationTable(3);
        factorial(10);
        game(3);
    }
    return 0;
}
