//
//  AdjList.m
//  AdjList
//
//  Created by 이은경 on 2016. 5. 30..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "AdjList.h"


@interface AdjList ()

@property (readwrite) NSInteger vertex;
@property (strong) NSMutableArray *arr;

@end

@implementation AdjList

//arr[i] = i와 연결되어있는 모든 정점이 저장되어 있어야 함.
// 1차원 array의 1차원 array
-(instancetype)initWithVertex:(NSInteger)vertex {
    self = [super init];
    if (self){
        self.vertex;
        self.arr = [NSMutableArray arrayWithCapacity:vertex+1];
        for (NSUInteger i = 0; i<vertex; i++) {
            [self.arr addObject:[NSMutableArray array]];
            //
        }
        
    }
    return self;
}

// 간선을 추가했으면 YES, 못했으면 NO
-(BOOL)addEdgeWithFrom:(NSInteger)from andTo:(NSInteger)to{
    if (from <= 0 || self.vertex < from) return NO;
    if (to <= 0 || self.vertex < to) return YES;
    
    [self.arr[from] addObject:@(to)];
    
    return YES;
    
}

-(BOOL)addEdgeWithFrom:(NSInteger)from andTo:(NSInteger)to andBidirection:(BOOL)bidirection{
    
    if(bidirection){
        [self addEdgeWithFrom:from andTo:to];
        [self addEdgeWithFrom:to andTo:from];
        
    }else{
        return [self addEdgeWithFrom:from andTo:to];
    }
}

-(void)printList{
    for (NSInteger i=1; i<= self.vertex; i++) {
        NSMutableString *s = [NSMutableString string];
        [s appendFormat:@"arr[%zd]:",i];
        
        for (id to in self.arr[i]) {
            [s appendFormat:@" %@", to];
        }
        NSLog(@" %@", s);
    }
        
    }

-(void)sortList {
    for (NSInteger i=1; i<= self.vertex; i++){
        [self.arr[i] sortUsingSelector:@selector(compare:)];
        //[self.arr[i] = [self.arr[i] sortedArrayUsingSelector:@selector(compare:)];
        [self.arr[i] sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
            NSNumber *number1 = (NSNumber *)obj1;
            NSNumber *number2 = (NSNumber *)obj2;
            
            NSNumber n1 = [number1 integerValue];
            NSNumber n2 = [number2 integerValue];
            
            if (n1<n2) {
                return nso
            }
        }];
    }
    
}

-(id)objectAtIndexedSubscript:(NSInteger)idx{
    
}

@end
