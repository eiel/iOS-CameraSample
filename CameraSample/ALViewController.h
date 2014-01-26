//
//  ALViewController.h
//  CameraSample
//
//  Created by えいる on 2014/01/26.
//  Copyright (c) 2014年 Tomohiko Himura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALViewController : UIViewController <UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)tapCamera:(id)sender;

@end
