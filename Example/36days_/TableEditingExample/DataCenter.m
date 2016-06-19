//
//  DataCenter.m
//  TableEditingExample
//
//  Created by 이은경 on 2016. 6. 9..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter ()

@property (nonatomic, strong) NSMutableArray *firstSectionData;
@property (nonatomic, strong) NSMutableArray *secondSectionData; //데이터 센터의 정의부분.

@end

@implementation DataCenter

+(instancetype)defaultData
{
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
        dataCenter.firstSectionData = [[NSMutableArray alloc] initWithObjects:@"A", @"B", @"C", nil];
        dataCenter.secondSectionData = [[NSMutableArray alloc] initWithObjects:@"D", @"E", @"F", nil];
    });         //데이터 센터의 싱글톤패턴.
    
    return dataCenter;
}

- (NSMutableArray *)dataForSection:(NSInteger)section{              //
    if (section == 0) {
        return self.firstSectionData;
    }
    
    return self.secondSectionData;
}

- (void)insertNewItemInSecondSection {
    
    [self.secondSectionData addObject:@"New Data"];
}

-(void)removeFirstSectionItemAtIndex:(NSInteger)index{
    
    [self.firstSectionData removeObjectAtIndex:index];
}

@end
