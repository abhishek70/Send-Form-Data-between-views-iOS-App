//
//  DetailViewController.m
//  BasicUserForm
//
//  Created by Abhishek Desai on 7/6/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize displayAge,displayEmail,displayGender,displayName, name, age, email, gender;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    displayName.text = name;
    displayEmail.text = email;
    displayGender.text = gender;
    if(![age isEqualToString:@"Select"]) {
        displayAge.text = age;
    } else {
        displayAge.text = @"";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
