//
//  ViewController.m
//  Sample-Objc-UISceneDelegate
//
//  Created by Michael McNamara on 03/10/2019.
//  Copyright © 2019 Intercom. All rights reserved.
//

#import "ViewController.h"
#import <Intercom/Intercom.h>

@interface ViewController () <UIAlertViewDelegate>

@property (nonatomic, weak) IBOutlet UIButton *logoutButton;
@property (nonatomic, weak) IBOutlet UIButton *loginButton;
@property (nonatomic, weak) IBOutlet UIButton *sendMessageButton;
@property (nonatomic, assign) BOOL loggedIn;

@end

@implementation ViewController

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
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"User Login" message:@"Type in an email address" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Login" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self handleUserLogin:alertController];
    }]];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Email";
    }];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (IBAction)logoutPressed:(id)sender {
    //Logout was pressed, so calling [Intercom logout] will log remove all local user data and stop tracking them.
    [Intercom logout];
    
    //Save email so we know the user is logged in
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"email"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    self.loggedIn = NO;
}

- (IBAction)openIntercomPressed:(id)sender {
    [Intercom presentMessenger];
}

- (void)handleUserLogin:(UIAlertController *)alertController {
    //The user pressed login, if they gave us an email, log them in.
    UITextField *emailField = alertController.textFields.firstObject;
    NSString *email = emailField.text;
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
