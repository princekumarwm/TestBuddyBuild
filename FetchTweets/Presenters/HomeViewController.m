//
//  HomeViewController.m
//  FetchTweets
//
//  Created by Prince Kumar on 20/01/18.
//  Copyright © 2018 Jio. All rights reserved.
//

#import "HomeViewController.h"
#import <Twitter/Twitter.h>
#import <TwitterKit/TWTRKit.h>


@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  //  [self loginButtonAction];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)loginButtonAction {
    
    //    NSString *userID = [Twitter sharedInstance].sessionStore.session.userID;
    //    TWTRAPIClient *client = [[TWTRAPIClient alloc] initWithUserID:userID];
    
    TWTRLogInButton *logInButton = [TWTRLogInButton buttonWithLogInCompletion:^(TWTRSession *session, NSError *error) {
        if (session) {
            NSLog(@"signed in as %@", [session userName]);
            // [self navigateToMyNewViewController];
        } else {
            NSLog(@"error: %@", [error localizedDescription]);
        }
    }];
    logInButton.center = self.view.center;
    [self.view addSubview:logInButton];
}
- (void)navigateToMyNewViewController {
    
    //    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //    TweetsTableViewController *tweets = [storyboard instantiateViewControllerWithIdentifier:@"TweetsTableViewController"];
    //    [self.navigationController pushViewController:tweets animated:YES];
    //
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
