//
//  main.m
//  StudyExample
//
//  Created by 이은경 on 2016. 5. 23..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>

int array[100];
int size = 0;

void push(int input){
    
    array[size]= input;
    size +=1;
    
}

void pop(){
    printf("%d\n",array[size-1]);
    array[size-1]= -1; //초기화
    size -= 1;
}

void printArray(){
    for (int i=0; i<size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
}


int main(int argc, const char * argv[]) {
    
    push(1);
    push(3);
    push(7);
    printArray();
    pop();
    pop();
    push(5);
    
    printArray();
    printf("%d\n", size);
    pop();
    pop();
    printf("%d\n", size);
    printArray();
    return 0;
}
