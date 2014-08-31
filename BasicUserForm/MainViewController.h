//
//  MainViewController.h
//  BasicUserForm
//
//  Created by Abhishek Desai on 7/5/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MainViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *age;
@property (strong, nonatomic) NSArray *ageRange;
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UISegmentedControl *gender;
@property (strong, nonatomic) NSString *genderSelectedText;
@property (strong, nonatomic) NSString *ageSelectedText;

- (IBAction)sendData:(id)sender;
- (IBAction)clearData:(id)sender;
- (IBAction)indexChanged:(id)sender;


@end
