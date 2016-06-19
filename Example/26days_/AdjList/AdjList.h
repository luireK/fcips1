//
//  AdjList.h
//  AdjList
//
//  Created by 이은경 on 2016. 5. 30..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdjList : NSObject

-(instancetype)initWithVertex:(NSInteger)vertex;
-(BOOL)addEdgeWithFrom:(NSInteger)from andTo:(NSInteger)to;
-(BOOL)addEdgeWithFrom:(NSInteger)from andTo:(NSInteger)to
        andBidirection:(BOOL)bidirection;
-(void)printList;
-(void)sortList;

-(id)objectAtIndexedSubscript:(NSInteger)idx;
@end
