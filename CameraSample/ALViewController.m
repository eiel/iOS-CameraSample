//
//  ALViewController.m
//  CameraSample
//
//  Created by えいる on 2014/01/26.
//  Copyright (c) 2014年 Tomohiko Himura. All rights reserved.
//

#import "ALViewController.h"

@interface ALViewController ()
{
    NSInteger num;
}
@end

@implementation ALViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    num = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapCamera:(id)sender {
    UIImagePickerController* cont = [[UIImagePickerController alloc] init];
    cont.sourceType = UIImagePickerControllerSourceTypeCamera;
    cont.delegate = self;

    [self presentViewController:cont animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{
    _imageView.image = image;
    UIImageView *imaveView = [[UIImageView alloc] initWithImage:image];
    [self.view addSubview:imaveView];
    imaveView.frame = CGRectMake(130, 60*num, 60, 60);
    num = num + 1;
    [self dismissModalViewControllerAnimated: YES];
}

@end
