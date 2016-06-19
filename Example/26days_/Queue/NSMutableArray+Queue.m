//
//  NSMutableArray+Queue.m
//  Queue
//
//  Created by 이은경 on 2016. 5. 30..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "NSMutableArray+Queue.h"

@implementation NSMutableArray (Queue)

-(void)push:(id)obj{
    [self ];
}
-(id)pop{
    if([self empty]){
        return nil;
    }
    id head =self[0];
    [self removeObject:0];
    return head;
}

-(BOOL)empty{
    if([self count] ==0){
        return YES;
    }else{
        return NO;
    }
}

@end
