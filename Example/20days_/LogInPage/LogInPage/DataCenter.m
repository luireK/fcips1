//
//  DataCenter.m
//  LogInPage
//
//  Created by 이은경 on 2016. 6. 7..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "DataCenter.h"




@implementation DataCenter

+(instancetype)shardInstance{
    static DataCenter *center =nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center = [[DataCenter alloc] init];
    });
    
    return center;
}

-(void)saveData:(NSDictionary *)data{
    
    /*
     1. Document 디렉토리 주소 가져오기
     2. 파일이름 주소에 추가시키기
     3. 파일 있는지 확인 (없다면 3-1로)
        3-1. 번들에 있는 파일주소 가져오기
        3-2. fileManager 이용하여 번들에 있는 파일 Document로 복사
     4. 파일에 있는 데이터 객체로 만들기
     5. 객체에 데이터 추가
     6. 객체 파일에 저장하기
     */
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, NO);
    NSString *docPath = paths[0];
    NSString *path = [docPath stringByAppendingPathComponent:@"UserList.plist"];
    
    NSFileManager *filemanager = [NSFileManager defaultManager];
    if (![filemanager fileExistsAtPath:path]) {
        NSString *bundlePath = [[NSBundle mainBundle]pathForResource:@"UserList" ofType:@"plist"];
        [filemanager copyItemAtPath:bundlePath toPath:path error:nil];
    }
    
    NSMutableArray *userList = [[NSMutableArray alloc] initWithArray:[NSArray arrayWithContentsOfFile:path]];
    [userList addObject:data];
    [userList writeToFile:path atomically:NO];
}

-(NSArray *)loadData{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, NO);
    NSString *docPath = paths[0];
    NSString *path = [docPath stringByAppendingPathComponent:@"UserList.plist"];
    
    return [NSArray arrayWithContentsOfFile:path];
    
}

/*로그인 확인 */
-(BOOL)isCheckLoginWithID:(NSString *)userID withPW:(NSString *)userPW{
    //plist 파일에 검사
    
    NSArray *userList = [self loadData];
    for (NSDictionary *userDic in userList) {
        NSString *selectID = [userDic objectForKey:@"user_id"];
        NSString *selectPW = [userDic objectForKey:@"user_pw"];
        
        if ([selectID isEqualToString:userID] && [selectPW isEqualToString:userPW]) {
            return YES;
        }
    }
    return NO;
}

//가입
-(BOOL)signupWithID:(NSString *)userID withPW:(NSString *)userPW{
    //plist 파일에 저장
    
    
    //id있는지 확인
    BOOL haveUser = NO;
    NSArray *userList = [self loadData];
    for (NSDictionary *userDic in userList) {
        NSString *selectID = [userDic objectForKey:@"user_id"];
        
        if ([selectID isEqualToString:userID]) {
            haveUser = YES;
        }
    }
    if (!haveUser) {
        NSDictionary *userData = @{@"user_id":userID, @"user_pw":userPW};
        [self saveData:userData];
        
        return YES;
    }else{
    
        return NO;
    }
}

//
-(BOOL)autoLogin{
    
    NSNumber *boolNum = [[NSUserDefaults standardUserDefaults] objectForKey:@"AUTO_LOGIN"];
    
    return boolNum.boolValue;
    
}

-(void)setAutoLogin:(BOOL)isAutoLogin{
    //NSUser Default
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:isAutoLogin] forKey:@"AUTO_LOGIN"];
}

-(NSString *)username{
    //NSUser Default
    
}

-(void)setUserName:(NSString *)username{
    //NSUser Default
}



@end
