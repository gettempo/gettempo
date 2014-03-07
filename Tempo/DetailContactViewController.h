//
//  DetailContactViewController.h
//  Tempo
//
//  Created by Steven Lyons on 3/6/14.
//  Copyright (c) 2014 Lyonspaw Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface DetailContactViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, MFMessageComposeViewControllerDelegate>

@property (nonatomic, strong) NSDictionary *dictContactDetails;

@end
