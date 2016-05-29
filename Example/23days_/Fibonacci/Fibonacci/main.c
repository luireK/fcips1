//
//  main.c
//  Fibonacci
//
//  Created by 이은경 on 2016. 5. 25..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#include <stdio.h>

int D[101];

int minNumber(int a, int b, int c) {
    int min=a;
    if(b<min)
        min=b;
    if(c<min)
        min=c;
    return min;
}


int main(int argc, const char * argv[]) {
    
    int n;
    
    scanf("%d", &n);
    
    D[1]=0;
    D[2]=1;
    D[3]=1;
    
    for (int i=4; i<=n; i++) {
        if (i%6 == 0) {
            D[i]=minNumber(D[i-1], D[i/3], D[i/2])+1;
        }
        
        else if(i % 2 == 0){
           
            if (D[i-1]+1 < D[i/2]+1) {
                D[i] = D[i-1]+1;
            } else {
                D[i] = D[i/2]+1;
            }
            
        }else if (i % 3 == 0){
            if (D[i-1]+1 < D[i/3]+1) {
                D[i] = D[i-1]+1;
            }else{
                D[i] = D[i/3]+1;
            }
            
        }else {
            D[i]=minNumber(D[i-1], D[i/3], D[i/2])+1;
            }
        }
    printf("%d\n",D[n]);
    return 0;
}
