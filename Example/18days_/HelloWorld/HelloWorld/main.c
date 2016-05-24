//
//  main.c
//  HelloWorld
//
//  Created by 이은경 on 2016. 5. 18..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#include <stdio.h>

//int main(int argc, const char * argv[]) {
//    // insert code here...
//    //printf("Hello, World!\n");
//    int a, b;
//    scanf("%d %d", &a,&b);
//    printf("%d\n", a+b);
//    return 0;
//}

//A
//int main(int argc, const char * argv[]) {
//    int n;
//    
//    scanf("%d", &n);
//    
//    for (int i = 1; i<=n; i++) {
//      printf("%d\n", i);
//    }
//    return 0;
//}

//B
//int main(int argc, const char * argv[]) {
//    int n;
//
//    scanf("%d", &n);
//
//    for (int i = n; i>=1; i--) {
//      printf("%d\n", i);
//    }
//    return 0;
//}

//E
//int main(int argc, const char * argv[]) {
//    int n;
//    int result = 0;
//
//    scanf("%d", &n);
//    
//    for (int i=1; i<=n; i++) {
//
//        result = result+i;
//    }
//    printf("%d\n", result);
//    return 0;
//}


//C
//int main(int argc, const char * argv[]) {
//    int n=0;
//    int result = 0;
//    
//    scanf("%d", &n);
//    
//    for (int i = 1; i<=9; i++) {
//        
//        result = n * i;
//        printf("%d * %d = %d\n", n, i, result);
//    }
//    
//}

//D
//int main(int argc, const char * argv[]) {
//    int n;
//    int result = 0;
//    
//    scanf("%d", &n);
//    
//    for (int i = 1; i<=9; i++) {
//        
//        result = n * i;
//        printf("%d * %d = %d", n, i, result);
//    }
//    
//}


//F
//int main(int argc, const char * argv[]) {
//    int n;
//    
//    scanf("%d", &n);
//    
//    int array[n];
//    
//    for (int i = 0; i<=n; i++) {
//        
//        scanf("%d",&array[i]);
//        
//        
//            }
//    printf("%d %d");
//}

//별찍기 1


//int main(int argc, const char * argv[]) {
//    int i;
//    int j;
//    int num;
//    
//    scanf("%d", &num);
//    
//    for (int i = 0; i < num ; i++) {
//        for(int j = 0; j < num-1-i; j++){
//            printf(" ");}
//        for(int j = 0; j < i*2+1; j++){
//            printf("*");}
//        printf("\n");
//    }
//    return 0;
//}

//별찍기 2
int main(int argc, const char * argv[]) {

    int i;
    int j;
    int num;
    
    scanf("%d", &num);
    
    for (i = 0; i < num; i++){
        for(j = 0; j < num-i; j++){
            printf(" ");}
        for(j = 0; j < i+1; j++){
            printf("*");}
        printf("\n");
    }
}

//별찍기 3
//별찍기 4
//int main(int argc, const char * argv[]) {
//    
//    int i;
//    int j;
//    int num;
//    
//    scanf("%d", &num);
//    
//    for (i = 0; i < num; i++){
//        for(j = 0; j < num+i; j++){
//            printf(" ");}
//        for(j = 0; j < num-i; j++){
//            printf("*");}
//        printf("\n");
//    }
//    
//    return 0;
//}


//별찍기 5
//별찍기 6
//별찍기 7
//별찍기 8
//별찍기 9
