//
//  DataCenter.h
//  LogInPage
//
//  Created by 이은경 on 2016. 6. 7..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+(instancetype)shardInstance;

//로그인 확인
-(BOOL)isCheckLoginWithID:(NSString *)userID withPW:(NSString *)userPW;
//가입여부 확인
-(BOOL)signupWithID:(NSString *)userID withPW:(NSString *)userPW;
//
-(BOOL)autoLogin;
-(void)setAutoLogin:(BOOL)isAutoLogin;

//
-(NSString *)username;
-(void)setUserName:(NSString *)username;
@end
