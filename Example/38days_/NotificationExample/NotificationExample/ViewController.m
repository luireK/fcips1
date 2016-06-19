//
//  ViewController.m
//  NotificationExample
//
//  Created by 이은경 on 2016. 6. 16..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *lb;

@property (nonatomic,strong) NSThread *thread;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//
    
//    [NSThread detachNewThreadSelector:@selector(testThread:) toTarget:self withObject:nil];
    
//    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(testThread:) object:nil];
//    [self.thread start];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(trakingPost:) name:@"NotificationKey" object:nil];
    

    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) trakingPost:(NSNotification *)noti {
    NSString *noniText = noti.object;
    [self.lb setText:noniText];
}

@end
