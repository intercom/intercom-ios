//
//  ITCViewController.m
//  Sample
//
//  Created by Brian Boyle on 19/07/2016.
//  Copyright (c) 2016 Intercom. All rights reserved.
//

#import "ITCViewController.h"
#import <Intercom/Intercom.h>

@interface ITCViewController () <UIAlertViewDelegate>

@property (nonatomic, weak) IBOutlet UIButton *logoutButton;
@property (nonatomic, weak) IBOutlet UIButton *loginButton;
@property (nonatomic, weak) IBOutlet UIButton *openMessengerButton;
@property (weak, nonatomic) IBOutlet UIButton *openArticleButton;
@property (weak, nonatomic) IBOutlet UIButton *openHelpCenterButton;
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
    self.openMessengerButton.enabled = loggedIn;
    self.openHelpCenterButton.enabled = loggedIn;
    self.openArticleButton.enabled = loggedIn;
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

- (IBAction)openMessengerTapped:(id)sender {
    [Intercom presentMessenger];
}

- (IBAction)openHelpCenterTapped:(id)sender {
    [Intercom presentHelpCenter];
}

- (IBAction)openArticle:(id)sender {
    [Intercom presentArticle:@"<#ARTICLE_ID#>"];
}

- (void)handleUserLogin:(UIAlertController *)alertController {
    //The user pressed login, if they gave us an email, log them in.
    UITextField *emailField = alertController.textFields.firstObject;
    NSString *email = emailField.text;
    if (email.length > 0) {
        //Start tracking the user with Intercom
        ICMUserAttributes *attributes = [ICMUserAttributes new];
        attributes.email = email;
        [Intercom loginUserWithUserAttributes:attributes success:^{
            //Save email so we know the user is logged in
            [[NSUserDefaults standardUserDefaults] setObject:email forKey:@"email"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            self.loggedIn = YES;
        } failure:^(NSError * _Nonnull error) {
            NSLog(@"Error logging in: %@", error.localizedDescription);
        }];
    }

}

@end
