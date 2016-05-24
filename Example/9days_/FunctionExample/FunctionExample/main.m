//
//  main.m
//  [160505] Function Example
//

#import <Foundation/Foundation.h>

//평수구하기 (제곱미터를 받아서 평으로 변환)

float pyengArea(int areaMeter)
{
    float pn = (float)areaMeter / 3.3;
    printf("평수는 %f 입니다.\n", pn);
    return pn;
}

//원의 둘레 구하기 (둘레 = 반지름 *2파이)
const float PI = 3.141592;
float circleRound(int radius)
{
    float cr = radius * 2 * PI;
    printf("둘레는 %f 입니다.\n", cr);
    return cr;
}



//달러 환전 계산기 (현재환율 $1 = 1300)

int exchangeMoney(int koreaMoney)
{
    float cd = (int)koreaMoney / 1300;
    printf("변환금액은 %0.2f 달러입니다.\n", cd);
    return cd;
}

// 소수점 셋째자리에서 반올림 함수 만들기

float thirhPoint(float num)
{
    float pu = ((int)(num * 100) + 0.5) / 100;
    printf("변환결과는 %f 입니다.", pu);
    return pu;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        pyengArea(100);
        circleRound(90);
        exchangeMoney(36000);
        thirhPoint(3.451);
    }
    return 0;
}