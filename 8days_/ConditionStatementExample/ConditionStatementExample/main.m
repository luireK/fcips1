//
//  main.m
//  [160505] Conditional Statement Example
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
    }else{
        printf("3등급\n");
        grade = 3;
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
            printf("안주겠노라\n");
            break;
    }
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        scholarshipWithGrade(matchingGrade(90));
    }
    return 0;
}
