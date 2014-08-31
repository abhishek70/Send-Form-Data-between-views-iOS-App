//
//  AppDelegate.h
//  BasicUserForm
//
//  Created by Abhishek Desai on 7/5/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MainViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MainViewController *mainViewController;
@property (nonatomic, retain) UINavigationController    *navigationController;

@end
