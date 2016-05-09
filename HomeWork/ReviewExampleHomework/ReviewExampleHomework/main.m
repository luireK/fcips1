//
//  main.m
//  [160506] Review Example Homework
//

#import <Foundation/Foundation.h>

// 성적등급 매기기

int matchingGrade(float score)
{
    int grade;
    
    if(score >= 90){
        printf("1등급\n");
        grade = 1;
    }else if(score >= 80){
        printf("2등급\n");
        grade = 2;
    }else if(score >= 70){
        printf("3등급\n");
        grade = 3;
    }
    else if(score >= 60){
        printf("4등급\n");
        grade = 4;
    }
    else{
        printf("5등급\n");
        grade = 5;
    }
    return grade;
}

// 성적등급에 따라 장학금주기

void scholarshipWithGrade(int grade){
    switch (grade) {
        case 1:
            printf("전액장학금을 주겠노라\n");
            break;
            
        case 2:
            printf("50%%만 주겠노라\n");
            break;
            
        case 3:
            printf("20%%만 주겠노라\n");
            break;
            
        default:
            printf("니들은 안주겠노라\n");
            break;
    }
}

// 절대값구하기
    
int absoluteNum(int num){
    if(num < 0){
        num = num * -1;
    }
    printf("%d\n",num);
        return num;
}
    

// 문자구분 : 문자 하나를 입력받아 이 문자가 소문자인지 대문자인지, 숫자인지 구분
    
void checkAlphabet(char alphabet){
    if (alphabet>='a' && alphabet<='z') {
        printf("소문자\n");
    }
    else if(alphabet>='A' && alphabet<='Z'){
        printf("대문자\n");
    }
    else if(alphabet>='0' && alphabet<='9'){
        printf("숫자\n");
    }
    else{
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
    for(int i = 1; i < 10; i++){
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

/* 369게임
3의 배수가 들어가면 *으로 표시. 나머지는 숫자로 표시.
ex)game369(17) >> 1,2,*,4,5,*,7,8,*,10,11,12,*,14,15,*17  */
    
void game(int n){
    for(int i = 1; i<= 29; i++){
        if((i % 10 == 3)||(i % 10 == 6)||(i % 10 == 9)){
            printf("*, ");
        }
        else{
            printf("%d, ",i);}
    }
}

//스왑 함수 만들기
void swapFunc (int a, int b){
    int temp = a;
    if(a != b){
        a = b;
        b = temp;
    }
    printf("a :%d\n",a);
    printf("b :%d\n",b);
}

//삼각수 구하기 : 삼각수란 1부터 모든 수의 합이다. 10=55

void trianglursRangeNum(int num)
{
    int rt = 0;
    for(int i = 1; i <= num ; i++){
        rt = rt + i ;
    }
    printf("%d\n", rt);
}

//삼각수 구하기2 : 두 수 사이의 5에 배수에 해당하는 숫자의 삼각수를 출력하시오.

void triangularRangeNum(int min, int max){
    int r = 0;
    for(int i = min; i <= max; i++){
        r = r + i;
        if(i %5 == 0){
            printf("%d\n", r);
        }
    }
}

//각 자리수 더하는 함수
void addAllNum(int n){
    
    int total = 0;
    int lastNum;
    float tempNum;
    
    while(0 < n){
        lastNum = n % 10;

        tempNum = n / 10;
    
        n = (int)tempNum;
        
        total = total + lastNum;
    }
    printf("%d\n", total);
}
    


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        scholarshipWithGrade(matchingGrade(80));
        absoluteNum(-14);
        checkAlphabet('4');
        checkLeapYear(2010);
        getMultiplicationTable(4);
        factorial(10);
        game(3);
        swapFunc(274, 100);
        trianglursRangeNum(10);
        triangularRangeNum(1,21);
        addAllNum(5674);
        
    }
    return 0;
}