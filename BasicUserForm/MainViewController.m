//
//  MainViewController.m
//  BasicUserForm
//
//  Created by Abhishek Desai on 7/5/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize age,name,email,gender, genderSelectedText;

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
    self.ageRange = [[NSArray alloc] initWithObjects:@"0-10",@"11-20",@"21-30",@"31-40",@"41-50",@"51-60",@"61-70", nil];
    [name resignFirstResponder];
    [email resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return self.ageRange.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row   forComponent:(NSInteger)component
{
    
    self.ageSelectedText = [self.ageRange objectAtIndex:row];
    return [self.ageRange objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row   inComponent:(NSInteger)component
{

}

- (IBAction)sendData:(id)sender {
    DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:detailViewController animated:true];
    detailViewController.title = @"Display Data";
    detailViewController.name = [NSString stringWithFormat:@"%@",self.name.text];
    detailViewController.email = [NSString stringWithFormat:@"%@",self.email.text];
    if([self.genderSelectedText length] != 0) {
        detailViewController.gender = [NSString stringWithFormat:@"%@",self.genderSelectedText];
    } else {
        detailViewController.gender = @"";
    }
    detailViewController.age = [NSString stringWithFormat:@"%@",self.ageSelectedText];
    
}

- (IBAction)clearData:(id)sender {
    name.text = @"";
    email.text = @"";
    gender.selected = false;
}

- (IBAction)indexChanged:(id)sender {
    
    switch (gender.selectedSegmentIndex)
    {
        case 0:
            self.genderSelectedText = @"Male";
            break;
        case 1:
            self.genderSelectedText = @"Female";
            break;
        default:
            self.genderSelectedText = @"";
            break; 
    }
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    if(textField == self.name) {
        [self.name resignFirstResponder];
    }
    if(textField == self.email) {
        [self.email resignFirstResponder];
    }
    return YES;
}
@end
