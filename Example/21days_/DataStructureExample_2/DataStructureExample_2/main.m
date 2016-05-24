//
//  main.m
//  AlgoExample2
//
//  Created by 이은경 on 2016. 5. 23..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <string.h>
#include <stdio.h>

//char str [100];
//int n;
//
//int main(){
//    int t;                       //입력 데이터의 수
//    scanf("%d", &t);
//
//    for(int k=0; k<t; k++){     // 입력받은 데이터만큼
//
//
//        scanf("%s", str);
//
//        n = strlen(str); // 문자열 길이 재는 함수
//        int cnt = 0;
//        int negative=0;
//
//        for (int i=0; i<n; i++) {       // 배열 안에 들어있는 인덱스의 갯수
//            char c = str[i];
//            if (c=='('){    // (
//                cnt += 1;
//            }else {         // )
//                cnt -= 1;
//            }
//            if (cnt <0){
//                negative =1;
//            }
//        }
//        if (negative == 0 && cnt ==0) {
//            printf("YES\n");
//        }else{
//            printf("NO\n");
//        }
//    }
//    return 0;
//}


//char leftStack[500000];
//char rightStack[500000];
//int left_size = 0;
//int right_size = 0;
//
//int main(){
//    scanf("%s",leftStack);
//
//    int t;
//    scanf("%d", &t);
//
//    for (int k=0; k<t; k++) {
//        char cmd;
//        char
//        scanf(" %c", &cmd);
//
//        if(cmd == 'L'){  // 커서를 왼쪽으로 한 칸 옮김
//
//                left_size -=1;
//
//                right_size +=1;
//
//        }else if (cmd == 'D'){   // 커서를 오른쪽으로 한 칸 옮김
//
//        }else if (cmd == 'B'){   // 커서 왼쪽에 있는 문자를 삭제함
//
//        }else if (cmd == 'P'){   // 새 글자를 커서 오른쪽에 추가하고 커서는 새 글자의 오른쪽에 위치함
//
//        }
//    }
//}
int begin = 0;
int end = 0;
int t;
char data[10000];
scanf("%d", &t);

for(int k=0;k<t;k++){
    char cmd[100];
    scanf("%s", cmd);
    
    if(!strcmp(cmd, "pop")){ //!strcmp => 두개의 문자열 비교함수
        if (begin == end){
            prinf("-1\n");  //pop에 정수가 들어있지 않을 경우 -1 출력
        }else{
            printf("%d\n", data[begin]);
            begin +=1;
        }
    }
    else if(!strcmp(cmd, "size"){
        printf("%d\n", end-begin);
    }
            else if(!strcmp(cmd, "empty"){
        if(begin == end){
            printf("1\n");
        }else{
            printf("0\n")
        }
    }else if(!strcmp(cmd, "front")){
        if(begin==end){
            printf("-1\n");     ////front에 정수가 들어있지 않을 경우 -1 출력
        }else{
            printf("%d", data[begin]);
        }
    }else if (!strcmp(cmd, "back"){
        if(begin == end){
            printf("-1\n");    ////back에 정수가 들어있지 않을 경우 -1 출력
        }else{
            printf("%d", data[end-1]);
        }
    }else {
        int num;
        scanf("%d", &num);
        data[end] = num;
    }
              }
