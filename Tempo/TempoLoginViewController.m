//
//  TempoLoginViewController.m
//  Tempo
//
//  Created by Steven Lyons on 2/26/14.
//  Copyright (c) 2014 Lyonspaw Studios. All rights reserved.
//

#import "TempoLoginViewController.h"
#import <Parse/Parse.h>
#import "Comms.h"


@interface TempoLoginViewController () <CommsDelegate>

@property (nonatomic, strong) IBOutlet UIButton *btnLogin;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *activityLogin;
@end

@implementation TempoLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void) viewDidLoad
{
    
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Default.png"]];
	[super viewDidLoad];
	
	// Ensure the User is Logged out when loading this View Controller
	// Going forward, we would check the state of the current user and bypass the Login Screen
	// but here, the Login screen is an important part of the tutorial
	[PFUser logOut];
}

// Outlet for FBLogin button
- (IBAction) loginPressed:(id)sender
{
	// Disable the Login button to prevent multiple touches
	[_btnLogin setEnabled:NO];
	
	// Show an activity indicator
	[_activityLogin startAnimating];
	
	// Do the login
	[Comms login:self];
}


- (void) commsDidLogin:(BOOL)loggedIn {
	// Re-enable the Login button
	[_btnLogin setEnabled:YES];
	
	// Stop the activity indicator
	[_activityLogin stopAnimating];
	
	// Did we login successfully ?
	if (loggedIn) {
		// Seque to the Image Wall
		[self performSegueWithIdentifier:@"LoginSuccessful" sender:self];
	} else {
		// Show error alert
		[[[UIAlertView alloc] initWithTitle:@"Login Failed"
									message:@"Facebook Login failed. Please try again"
								   delegate:nil
						  cancelButtonTitle:@"Ok"
						  otherButtonTitles:nil] show];
	}
}

@end
