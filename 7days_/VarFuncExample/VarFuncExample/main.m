//
//  main.m
//  [160504] Variavle / Function Example
//

#import <Foundation/Foundation.h>
/*
 
 //변수 만들기 연습
 
 int age = 15;
 float height = 164;
 Boolean isLogin = true;
 const double PI = 3.14;
 
 //변수 이름 만들기 연습
 
 float cokePrice = 1100;
 float coffeePrice = 1500;
 float juicePrice = 1100;//음료수 가격
 int koreanScore = 100;
 int engScore = 90;
 int mathScore = 80;//과목점수
 int drinkCount = 5; //음료수갯수
 float totalScore = 95;//과목총점
 const maxDrinkCount = 100; //MAX 음료수 갯수
 float avgScore = 95;//과목평균
 float changeMoney = 10000;//거스름돈
 NSString *userName = @"EK Lee";//사용자이름
 NSString *selectedDrinkName = @"사이다";//선택된음료수이름
 
 currentMusicId//현재 재생음악 아이디
 settingBtn//셋팅버튼
 playedMusicList//재생된음악들
 resultPrint//결과출력창
 likeCount//좋아요숫자
 mainScreen//메인화면
 insertArea//댓글입력영역
 userID//사용자아이디
 menuBtn//메뉴버튼
 userInfo//사용자정보
 
 */

//실습! 성적 평균 구하기

int koreanScore = 0;
int mathScore = 0;
int scienceScore = 0;
int englishScore = 0;

void setKoreanScore(int newScore)
{
    koreanScore = newScore;
}

void setMathScore(int newScore)
{
    mathScore = newScore;
}

void setScienceScore(int newScore)
{
    scienceScore = newScore;
}

void setEnglishScore(int newScore)
{
    englishScore = newScore;
}

int totalScore()
{
    int total = koreanScore + mathScore + scienceScore + englishScore; //과목 총점
    return total;
}

float avgScore()
{
    float avg = (float)totalScore() / 4; //과목 평균
    return avg;
    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        setKoreanScore(95);
        setMathScore(85);
        setScienceScore(80);
        setEnglishScore(90);
        
        printf("내 점수의 평균은 %f 입니다.", avgScore());
        
        
    }
    return 0;
}