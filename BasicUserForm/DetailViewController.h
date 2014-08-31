//
//  DetailViewController.h
//  BasicUserForm
//
//  Created by Abhishek Desai on 7/6/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *displayName;
@property (strong, nonatomic) IBOutlet UILabel *displayEmail;
@property (strong, nonatomic) IBOutlet UILabel *displayGender;
@property (strong, nonatomic) IBOutlet UILabel *displayAge;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *gender;
@property (strong, nonatomic) NSString *age;

@end
