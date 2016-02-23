//
//  ViewController.h
//  assignment2
//
//  Created by Mohamed Bahgat Elrakaiby on 2/11/16.
//  Copyright © 2016 Mohamed Bahgat Elrakaiby. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UILabel* Monitor;

@property IBOutlet UIButton* MR_Button;
@property IBOutlet UIButton* MC_Button;
@property IBOutlet UIButton* M_Button;
@property IBOutlet UIButton* Sign_Button;
@property IBOutlet UIButton* Invert_Button;
@property IBOutlet UIButton* division_Button;
@property IBOutlet UIButton* multiplication_Button;
@property IBOutlet UIButton* subtraction_Button;
@property IBOutlet UIButton* adddition_Button;
@property IBOutlet UIButton* equal_Button;
@property IBOutlet UIButton* clear_Button;
@property IBOutlet UIButton* zero_Button;
@property IBOutlet UIButton* dot_Button;
@property IBOutlet UIButton* one_Button;
@property IBOutlet UIButton* two_Button;
@property IBOutlet UIButton* three_Button;
@property IBOutlet UIButton* four_Button;
@property IBOutlet UIButton* five_Button;
@property IBOutlet UIButton* six_Button;
@property IBOutlet UIButton* seven_Button;
@property IBOutlet UIButton* eight_Button;
@property IBOutlet UIButton* nine_Button;

@property double memory;

@property double operand_1;
@property double operand_2;

@property int operation;

@property bool clear_screen_next;

-(void) clear;
-(double) generateResult;

@end

