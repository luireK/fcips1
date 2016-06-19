//
//  ViewController.m
//  MyImagePicker
//
//  Created by 이은경 on 2016. 6. 10..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController
- (IBAction)touchImageView:(id)sender {
    
    UIAlertController *alertStyleSheet = [UIAlertController alertControllerWithTitle:@"사진소스선택"
                                                                             message:@"사진을 선택해 주세요"
                                                                      preferredStyle:(UIAlertControllerStyleActionSheet)];
    
    
    UIAlertAction *cameraAction = [UIAlertAction actionWithTitle:@"사진앨범"
                                                         style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * _Nonnull action) {
                                                           [self showImagePickerWithSourceType:UIImagePickerControllerSourceTypeCamera];
                                                           NSLog(@"사진앨범을 보여주는 액션");
                                                       }];
    
    UIAlertAction *libraryAction = [UIAlertAction actionWithTitle:@"라이브러리"
                                                      style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction * _Nonnull action) {
                                                        [self showImagePickerWithSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
                                                        NSLog(@"라이브러리로 이동하는 액션");
                                                    }];
    UIAlertAction *cancelBtn = [UIAlertAction actionWithTitle:@"취소"
                                                        style:UIAlertActionStyleCancel
        
                                                      handler:^(UIAlertAction * _Nonnull action) {
                                                          NSLog(@"취소됨");
                                                      }];
    
    [self presentViewController:alertStyleSheet animated:YES completion:nil];
    
    [alertStyleSheet addAction:cameraAction];
    [alertStyleSheet addAction:libraryAction];
    [alertStyleSheet addAction:cancelBtn];
    
    
    
    NSLog(@"Image view touched");
}


-(void)showImagePickerWithSourceType:(UIImagePickerControllerSourceType)sourceType {
    
    if ([UIImagePickerController isSourceTypeAvailable:sourceType] == NO) {
        // 사용자에게 얼럿 보여주기
        // 얼럿코드...
        
        //우리는 로그를 보겠다
        NSLog(@"이 소스는 못쓴댜");
        return;
    }
    
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    [pickerController setSourceType:sourceType];
    [pickerController setDelegate:self];
    
    [pickerController setAllowsEditing:YES];
    
    //picker를 모달로 보여준다.
    [self presentViewController:pickerController animated:YES completion:nil];
    
}

#pragma mark - UIImagePicker Controller Delegate

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    //picker 모달을 내려준다.
    [picker dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    //이미지 가져오기
    UIImage *pickedOriginalImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self.imageView setImage:pickedOriginalImage];
    
    //이미지 편집
    UIImage *editedImage = [info objectForKey:UIImagePickerControllerEditedImage];
    self.imageView.image = editedImage;
    
    //이미지크기
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
