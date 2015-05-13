//
//  ITCViewController.m
//  Sample
//
//  Created by James Treanor on 13/05/2015.
//  Copyright (c) 2015 Intercom. All rights reserved.
//

#import "ITCViewController.h"
#import <Intercom/Intercom.h>

@interface ITCViewController () <UIAlertViewDelegate>

@property (nonatomic, weak) IBOutlet UIButton *logoutButton;
@property (nonatomic, weak) IBOutlet UIButton *loginButton;
@property (nonatomic, weak) IBOutlet UIButton *sendMessageButton;
@property (nonatomic, assign) BOOL loggedIn;

@end

@implementation ITCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loggedIn = [[NSUserDefaults standardUserDefaults] objectForKey:@"email"] != nil;
}

- (void)setLoggedIn:(BOOL)loggedIn {
    _loggedIn = loggedIn;
    
    self.loginButton.enabled = !loggedIn;
    self.logoutButton.enabled = loggedIn;
    self.sendMessageButton.enabled = loggedIn;
}

- (IBAction)loginPressed:(id)sender {
    //The user is not logged in, so prompt for their email address
    UIAlertView *loginAlert = [[UIAlertView alloc] initWithTitle:@"User Login"
                                                         message:@"Type in an email address"
                                                        delegate:self
                                               cancelButtonTitle:@"Cancel"
                                               otherButtonTitles:@"Login", nil];
    loginAlert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [loginAlert show];
}

- (IBAction)logoutPressed:(id)sender {
    //Logout was pressed, so calling [Intercom reset] will log remove all local user data and stop tracking them.
    [Intercom reset];
    
    //Save email so we know the user is logged in
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"email"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    self.loggedIn = NO;
}

- (IBAction)openIntercomPressed:(id)sender {
    //If your Intercom plan includes inbound messaging, this will show the message composer. Otherwise the message list will be shown.
    [Intercom presentMessageComposer];
}

#pragma mark - UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) { //Cancel button
        return;
    }
    
    //The user pressed login, if they gave us an email, log them in.
    NSString *email = [alertView textFieldAtIndex:0].text;
    if (email.length > 0) {
        //Start tracking the user with Intercom
        [Intercom registerUserWithEmail:email];
        
        //Save email so we know the user is logged in
        [[NSUserDefaults standardUserDefaults] setObject:email forKey:@"email"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        self.loggedIn = YES;
    }
}

@end
