//
//  main.m
//  [0506] Review Example
//

#import <Foundation/Foundation.h>


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
    
    //결과 값 저장 변수
    int total = 0;
    
    //끝 자리 정수 값 저장 변수
    int lastNum;
    
    //임시 실수 값 저장 변수
    float tempNum;
    
    while(0 < n){
        //3 @ 2 @ 1
        lastNum = n%10;
        
        //12.3 @ 1.2 @ 0.1
        tempNum = n/10;
        
        //12 @ 1 @ 0
        n = (int)tempNum;
        
        //3 @ 5 @ 6
        total = total + lastNum;
    }
    printf("%d\n", total);
}













int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        swapFunc(255, 100);
        trianglursRangeNum(10);
        triangularRangeNum(1,25);
        addAllNum(123);
    }
    return 0;
}
