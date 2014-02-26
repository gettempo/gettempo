//
//  TempoPhotoViewController.h
//  Tempo
//
//  Created by Steven Lyons on 2/26/14.
//  Copyright (c) 2014 Lyonspaw Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainViewController.h"

typedef void(^ConfirmCallback)(id sender, bool confirm);

@interface TempoPhotoViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (copy, nonatomic) ConfirmCallback confirmCallback;
@property (strong, readonly) UIImage *image;

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil image:(UIImage *)anImage;
- (IBAction)confirm:(id)sender;
- (IBAction)cancel:(id)sender;

@end
