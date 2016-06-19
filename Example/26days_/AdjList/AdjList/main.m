//
//  main.m
//  AdjList
//
//  Created by 이은경 on 2016. 5. 30..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdjList.h"

void dfs(AdjList *adj, NSMutableArray *check, NSInteger node){
    if ([check[node] boolValue == YES]) {
        return;
    }
    check[node] = @(YES);
    NSLog(@"%zd 방문",node);
    
    for (id next in adj[node]; <#condition#>; <#increment#>) {
        <#statements#>
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AdjList *adj = [[AdjList alloc] initWithVertex:6];
        [adj addEdgeWithFrom:1 andTo:2 andBidirection:YES];
        [adj addEdgeWithFrom:1 andTo:5 andBidirection:YES];
        [adj addEdgeWithFrom:2 andTo:3 andBidirection:YES];
        [adj addEdgeWithFrom:2 andTo:4 andBidirection:YES];
        [adj addEdgeWithFrom:2 andTo:5 andBidirection:YES];
        [adj addEdgeWithFrom:5 andTo:4 andBidirection:YES];
        [adj addEdgeWithFrom:4 andTo:3 andBidirection:YES];
        [adj addEdgeWithFrom:4 andTo:6 andBidirection:YES];
        [adj printList];
        
        NSMutableArray *check =[NSMutableArray array];
        for(NSInteger i=0; i<=vertex; i++){
            [check addObject:@(NO)];
        }
        
        dfs(adj, check, 1);
    }
    return 0;
}
