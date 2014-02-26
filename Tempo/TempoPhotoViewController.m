//
//  TempoPhotoViewController.m
//  Tempo
//
//  Created by Steven Lyons on 2/26/14.
//  Copyright (c) 2014 Lyonspaw Studios. All rights reserved.
//

#import "TempoPhotoViewController.h"

@interface TempoPhotoViewController ()

@property (strong, readwrite) UIImage *image;

@end

@implementation TempoPhotoViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil image:(UIImage *)anImage
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.image = anImage;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.imageView setImage:self.image];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.imageView = nil;
    self.image = nil;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBarHidden = NO;
    
    [super viewWillDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)confirm:(id)sender {
    if (self.confirmCallback) {
        self.confirmCallback(self, YES);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)cancel:(id)sender {
    if (self.confirmCallback) {
        self.confirmCallback(self, NO);
    }
    [self.navigationController popViewControllerAnimated:YES];
}
@end
