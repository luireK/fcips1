//
//  ImageViewerTableViewController.m
//  NetworkMiniProject
//
//  Created by 이은경 on 2016. 6. 22..
//  Copyright © 2016년 EK Lee. All rights reserved.
//

#import "ImageViewerTableViewController.h"
#import "ImageViewController.h"

@interface ImageViewerTableViewController ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIImage *pickedImage;
@property (nonatomic, strong) NSString *pickedImageName;
@property (nonatomic, strong) NSString *userID;

@end

@implementation ImageViewerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"유저 아이디 입력"
                                                                   message:@"아이디를 입력하세요. 아이디는 숫자입니다."
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *submit = [UIAlertAction actionWithTitle:@"확인"
                                                      style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction * _Nonnull action) {
                                                        UITextField *idFleid = alert.textFields.firstObject;
                                                        NSString *userID = idFleid.text;
                                                        
                                                        if ([userID length] != 0) {
                                                            

                                                        }else{
                                                         [self presentViewController:alert animated:YES completion:nil];
                                                        }
                                                    }];
    
    [alert addAction:submit];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        [textField setPlaceholder:@"아이디는 숫자만 입력하세요"];
    }];
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ImageListCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text = self.pickedImageName;
    cell.imageView.image = self.pickedImage;
    
    
    return cell;
}


- (IBAction)imageUpload:(id)sender {
    
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    [pickerController setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [pickerController setDelegate:self];
    
    //picker를 모달로 보여준다.
    [self presentViewController:pickerController animated:YES completion:nil];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    UIImage *pickedImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.pickedImage = pickedImage;
    
    self.view.contentMode = UIViewContentModeScaleAspectFill;
    
    [picker dismissViewControllerAnimated:YES completion:^{
        
        UIAlertController *imageAddAlert = [UIAlertController alertControllerWithTitle:@"사진제목"
                                                                               message:@"사진을 입력해주세요"
                                                                        preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *imageAddAction = [UIAlertAction actionWithTitle:@"사진제목을 입력해주세요"
                                                                 style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction * _Nonnull action) {
                                                                   UITextField *imageNameFleid = imageAddAlert.textFields.firstObject;
                                                                   if ([imageNameFleid.text length] != 0) {
                                                                       
                                                                       self.pickedImageName = imageNameFleid.text;
                                                                       [self refreshTable];
                                                                   }
                                                               }];
        [imageAddAlert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            [textField setPlaceholder:@"사진 제목을 입력해 주세요. 공란은 안됩니다"];
        }];
        [imageAddAlert addAction:imageAddAction];
        
        [self presentViewController:imageAddAlert animated:YES completion:nil];
        
    }];
}

- (IBAction)refreshTable {
    [self.tableView reloadData];
}

//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//
//    ImageViewController *imageView = [self.storyboard instantiateViewControllerWithIdentifier:@"ImageViewController"];
//    
//    [self.navigationController pushViewController:imageView animated:YES];
//    
//}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ImageViewController *imageView = [segue destinationViewController];
    
    UITableViewCell *cell = sender;
    
    
    imageView.image = cell.imageView.image;
    
}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation






@end
