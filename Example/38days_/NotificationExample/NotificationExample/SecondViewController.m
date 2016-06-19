//
//  SecondViewController.m
//  NotificationExample
//
//  Created by 이은경 on 2016. 6. 16..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () 

@property (nonatomic, weak) IBOutlet UITextField *tf;
@property (nonatomic, strong) NSThread *thread;
@property (nonatomic, weak) IBOutlet UILabel*lb;
@property (nonatomic, strong) NSNumber *pauseNum;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
       _pauseNum = 0;
    
//    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(testThread:) object:nil];
//    [self.thread start];
    
    // Do any additional setup after loading the view.
    
}

-(void)testThread:(NSThread *)thread{
    
    
    NSInteger i = self.pauseNum.integerValue;

    while (self.thread.isCancelled == NO) {
        [NSThread sleepForTimeInterval:1.0f]; //sleep= 대기
        [self performSelectorOnMainThread:@selector(changeDisplay:) withObject:[NSNumber numberWithInteger:i++] waitUntilDone: YES]; //메인스레드로 가서 돌린다.
        
        self.pauseNum = [NSNumber numberWithInteger:i];
    }
    
}

//시작/멈춤버튼

- (IBAction)okBtn:(id)sender {
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationKey" object:self.tf.text];
//    [self.navigationController popViewControllerAnimated:YES];
    if (self.thread.isExecuting == NO) {
        self.thread = nil;
        //
        {
            self.pauseNum = nil;
        }
        
        self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(testThread:) object:nil];
        [self.thread start];
    } else{
        [self.thread cancel];
        
    }
    
}
//일시중지/다시시작 버튼


- (IBAction)pauseBtn:(id)sender{
    
    if (self.thread.isExecuting == YES) {
        [self.thread cancel];
    }
//    else{
//        self.thread = nil;
//        self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(testThread:) object:nil];
//        [self.thread start];
//    }
    
  }


-(void)changeDisplay:(NSNumber *)number{
    self.tf.text= [NSString stringWithFormat:@"%ld", number.integerValue];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
