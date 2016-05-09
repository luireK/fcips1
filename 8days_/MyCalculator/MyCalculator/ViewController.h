//
//  ViewController.h
//  MyCalculator
//
//  Created by 이은경 on 2016. 5. 4..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSInteger resultNum;
    NSString *operatorBuffer;
    NSString *displayText;
}

//
@property(nonatomic, weak) IBOutlet UITextField *displayTextFieid;

@end

