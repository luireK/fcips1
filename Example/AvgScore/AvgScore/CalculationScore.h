//
//  CalculationScore.h
//  AvgScore
//
//  Created by 이은경 on 2016. 5. 10..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculationScore : NSObject

- (void)addSubjectScore:(NSUInteger)score;

- (CGFloat)averageScore;

- (NSString*)setScoreToGrade:(CGFloat)average;

- (CGFloat)setGradeToPoint:(NSString *)grade;

@end
