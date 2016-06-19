//
//  ViewController.m
//  GcdExample
//
//  Created by 이은경 on 2016. 6. 17..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *timeLb;
//@property (nonatomic,strong) NSThread *timeTread;
@property (nonatomic) dispatch_queue_t timer_queue;
@property (nonatomic, assign) __block NSInteger gcdSecond; // __block 을 쓰면 블록안에서도 쓸 수 있다.

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gcdSecond = 0;
    
    /* gcd 예제
    =====================
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(queue,^{
        NSLog(@"1");
    });
    
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 2*NSEC_PER_SEC);
    
    dispatch_after(time, queue, ^{
        NSLog(@"dealay 2");
    });
    
    dispatch_async(queue,^{
        
        for (int i = 0; i < 5000; i++) {
            NSLog(@"for://%d", i);
        }
    });
    
    dispatch_async(queue,^{
        NSLog(@"3");
    });
    
    dispatch_async(queue,^{
        NSLog(@"4");
    });
    
    
    
    self.gcdSecond = 0;
    ===================
     */
    
    
    
}


- (IBAction)controlBtnAction:(UIButton *)sender{
    
    if (sender.selected) { //stop
        sender.selected = NO;
    
        
        [self stop];
    }else{
        sender.selected = YES;
        
        if (self.timer_queue == nil) {
            self.timer_queue = dispatch_queue_create("wing"/*함수이름*/, DISPATCH_QUEUE_SERIAL);
            [self startTime];
        }else{
            dispatch_resume(self.timer_queue);
        }
    }
}

//gcd method

-(void)startTime{
    
   // NSInteger index = 0;
    
    dispatch_async(self.timer_queue, ^{
        
       //초를 증가시키고 레이블에 들어가는 값을 변경.
        self.gcdSecond ++;
        
        //메인스레드에 있는 라벨에 값을 올려야 함.
        dispatch_sync(dispatch_get_main_queue(), ^{
            [self.timeLb setText:[NSString stringWithFormat:@"%ld", self.gcdSecond]];
        });
        
        dispatch_time_t delay = dispatch_time(DISPATCH_TIME_NOW, 1*NSEC_PER_SEC);
        dispatch_after(delay, self.timer_queue, ^{
           
            [self startTime]; // <- 재귀함수
            
        });
        
    });
    
}

-(void)stop {
    
    dispatch_suspend(self.timer_queue);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
