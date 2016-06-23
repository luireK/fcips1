//
//  ViewController.m
//  imageDownload
//
//  Created by 이은경 on 2016. 6. 23..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Session 객체생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    //Task 객체 생성
    NSURLSessionTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:@"https://proxy.namuwikiusercontent.com/r/http%3A%2F%2Fimage.bugsm.co.kr%2Fartist%2Fimages%2Foriginal%2F802590%2F80259074.jpg"]
                                         completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        
        if (data.length>0) {
            UIImage *image = [UIImage imageWithData:data];
        
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imgView.image = image;
        });
                
    }
                                  
}];

                                  
    [dataTask resume];
                                  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
