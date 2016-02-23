//
//  ViewController.m
//  assignment2
//
//  Created by Mohamed Bahgat Elrakaiby on 2/11/16.
//  Copyright © 2016 Mohamed Bahgat Elrakaiby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.Monitor.layer.borderWidth = 0.75;
    self.Monitor.layer.cornerRadius = 8;
    
    self.MR_Button.layer.borderWidth = 1.25;
    self.MR_Button.layer.cornerRadius = 8;
    //self.MR_Button.layer.borderColor = [UIColor colorWithRed:<#(CGFloat)#> green:<#(CGFloat)#> blue:<#(CGFloat)#> alpha:<#(CGFloat)#>].CGColor;
    
    self.MC_Button.layer.borderWidth = 1.25;
    self.MC_Button.layer.cornerRadius = 8;
    
    self.M_Button.layer.borderWidth = 1.25;
    self.M_Button.layer.cornerRadius = 8;
    
    self.Sign_Button.layer.borderWidth = 1.25;
    self.Sign_Button.layer.cornerRadius = 8;
    
    self.Invert_Button.layer.borderWidth = 1.25;
    self.Invert_Button.layer.cornerRadius = 8;
    
    self.division_Button.layer.borderWidth = 1.25;
    self.division_Button.layer.cornerRadius = 8;
    
    self.multiplication_Button.layer.borderWidth = 1.25;
    self.multiplication_Button.layer.cornerRadius = 8;
    
    self.subtraction_Button.layer.borderWidth = 1.25;
    self.subtraction_Button.layer.cornerRadius = 8;
    
    self.adddition_Button.layer.borderWidth = 1.25;
    self.adddition_Button.layer.cornerRadius = 8;
    
    self.equal_Button.layer.borderWidth = 1.25;
    self.equal_Button.layer.cornerRadius = 8;
    
    self.clear_Button.layer.borderWidth = 1.25;
    self.clear_Button.layer.cornerRadius = 8;
    
    self.dot_Button.layer.borderWidth = 01.25;
    self.dot_Button.layer.cornerRadius = 8;
    
    self.zero_Button.layer.borderWidth = 1.25;
    self.zero_Button.layer.cornerRadius = 8;
    
    self.one_Button.layer.borderWidth = 1.25;
    self.one_Button.layer.cornerRadius = 8;
    
    self.two_Button.layer.borderWidth = 1.25;
    self.two_Button.layer.cornerRadius = 8;
    
    self.three_Button.layer.borderWidth = 1.25;
    self.three_Button.layer.cornerRadius = 8;
    
    self.four_Button.layer.borderWidth = 1.25;
    self.four_Button.layer.cornerRadius = 8;
    
    self.five_Button.layer.borderWidth = 1.25;
    self.five_Button.layer.cornerRadius = 8;
    
    self.six_Button.layer.borderWidth = 1.25;
    self.six_Button.layer.cornerRadius = 8;
    
    self.seven_Button.layer.borderWidth = 1.25;
    self.seven_Button.layer.cornerRadius = 8;
    
    self.eight_Button.layer.borderWidth = 1.25;
    self.eight_Button.layer.cornerRadius = 8;
    
    self.nine_Button.layer.borderWidth = 1.25;
    self.nine_Button.layer.cornerRadius = 8;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction) MR_Button_function:(UIButton*)sender {
    
    self.Monitor.text = [NSString stringWithFormat: @"%g", self.memory];
}

- (IBAction) MC_Button_function:(UIButton*)sender {
    
    self.memory = 0;
}

- (IBAction) M_Button_function:(UIButton*)sender {
    
    self.memory = [self.Monitor.text doubleValue];
}

- (IBAction) Sign_Button_function:(UIButton*)sender {
    
    self.Monitor.text = [NSString stringWithFormat:@"%g", ([self.Monitor.text doubleValue] * -1)];
}

- (IBAction) Invert_Button_function:(UIButton*)sender {
    
    self.Monitor.text = [NSString stringWithFormat:@"%g", (1.0 / [self.Monitor.text doubleValue])];
}

- (IBAction) division_Button_function:(UIButton*)sender {
    
    if(self.operand_1 == 0){
        
        self.operation = 3;
        
        self.operand_1 = [self.Monitor.text doubleValue];
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 0];
    }
    
    else if (self.operand_1 != 0) {
        
        self.operand_1 = self.generateResult;
        
        self.Monitor.text = [NSString stringWithFormat:@"%g", self.operand_1];
        self.clear_screen_next = true;
        
        self.operation = 3;
    }
}

- (IBAction) multiplication_Button_function:(UIButton*)sender {
    
    if(self.operand_1 == 0){
        
        self.operation = 2;
        
        self.operand_1 = [self.Monitor.text doubleValue];
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 0];
    }
    
    else if (self.operand_1 != 0) {
        
        self.operand_1 = self.generateResult;
        
        self.Monitor.text = [NSString stringWithFormat:@"%g", self.operand_1];
        self.clear_screen_next = true;
        
        self.operation = 2;
    }
}

- (IBAction) subtraction_Button_function:(UIButton*)sender {
    
    if(self.operand_1 == 0){
        
        self.operation = 1;
        
        self.operand_1 = [self.Monitor.text doubleValue];
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 0];
    }
    
    else if (self.operand_1 != 0) {
        
        self.operand_1 = self.generateResult;
        
        self.Monitor.text = [NSString stringWithFormat:@"%g", self.operand_1];
        self.clear_screen_next = true;
        
        self.operation = 1;
    }
}


- (IBAction) adddition_Button_function:(UIButton*)sender {
    
    if(self.operand_1 == 0){
        
        self.operation = 0;
        
        self.operand_1 = [self.Monitor.text doubleValue];
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 0];
    }
    
    else if (self.operand_1 != 0) {
        
        self.operand_1 = self.generateResult;
        
        self.Monitor.text = [NSString stringWithFormat:@"%g", self.operand_1];
        self.clear_screen_next = true;
        
        self.operation = 0;
    }
}

- (IBAction) equal_Button_function:(UIButton*)sender {
    
    if(self.operand_1 == 0){
        return;
    }
    
    self.operand_2 = [self.Monitor.text doubleValue];
    
    if(self.operation == 3 && self.self.operand_2 == 0){
        
        self.Monitor.text = [NSString stringWithFormat:@"cannot divide by zero"];
        self.clear_screen_next = true;
    }
    else{
        
        self.Monitor.text =  [NSString stringWithFormat:@"%g", self.generateResult];
        self.clear_screen_next = true;
    }
    
    [self clear];
}

- (IBAction) clear_Button_function:(UIButton*)sender {
    
    [self clear];
    
    self.Monitor.text = [NSString stringWithFormat:@"%i", 0];
}

- (IBAction) zero_Button_function:(UIButton*)sender {
    
    self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0)? @"" : self.Monitor.text, 0];
}

- (IBAction) dot_Button_function:(UIButton*)sender {
    
    self.Monitor.text = ([self.Monitor.text containsString:@"."])? self.Monitor.text : [NSString stringWithFormat:@"%@%@", self.Monitor.text, @"."];
}

- (IBAction) one_Button_function:(UIButton*)sender {
    if(self.clear_screen_next) {
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 1];
        self.clear_screen_next = false;
    }
    else{
        
        self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0 && ![self.Monitor.text containsString: @"."])? @"" : self.Monitor.text, 1];
    }
    
}

- (IBAction) two_Button_function:(UIButton*)sender {
    
    if(self.clear_screen_next) {
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 2];
        self.clear_screen_next = false;
    }
    else{
        
        self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0 && ![self.Monitor.text containsString: @"."])? @"" : self.Monitor.text, 2];
    }
}

- (IBAction) three_Button_function:(UIButton*)sender {
    
    if(self.clear_screen_next) {
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 3];
        self.clear_screen_next = false;
    }
    else{
        
        self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0 && ![self.Monitor.text containsString: @"."])? @"" : self.Monitor.text, 3];
    }
}

- (IBAction) four_Button_function:(UIButton*)sender {
    
    if(self.clear_screen_next) {
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 4];
        self.clear_screen_next = false;
    }
    else{
        
        self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0 && ![self.Monitor.text containsString: @"."])? @"" : self.Monitor.text, 4];
    }
}

- (IBAction) five_Button_function:(UIButton*)sender {
    
    if(self.clear_screen_next) {
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 5];
        self.clear_screen_next = false;
    }
    else{
        
        self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0 && ![self.Monitor.text containsString: @"."])? @"" : self.Monitor.text, 5];
    }
}

- (IBAction) six_Button_function:(UIButton*)sender {
    
    if(self.clear_screen_next) {
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 6];
        self.clear_screen_next = false;
    }
    else{
        
        self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0 && ![self.Monitor.text containsString: @"."])? @"" : self.Monitor.text, 6];
    }
}

- (IBAction) seven_Button_function:(UIButton*)sender {
    
    if(self.clear_screen_next) {
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 7];
        self.clear_screen_next = false;
    }
    else{
        
        self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0 && ![self.Monitor.text containsString: @"."])? @"" : self.Monitor.text, 7];
    }
}

- (IBAction) eight_Button_function:(UIButton*)sender {
    
    if(self.clear_screen_next) {
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 8];
        self.clear_screen_next = false;
    }
    else{
        
        self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0 && ![self.Monitor.text containsString: @"."])? @"" : self.Monitor.text, 8];
    }
}

- (IBAction) nine_Button_function:(UIButton*)sender {
    
    if(self.clear_screen_next) {
        
        self.Monitor.text = [NSString stringWithFormat:@"%i", 9];
        self.clear_screen_next = false;
    }
    else{
        
        self.Monitor.text = [NSString stringWithFormat:@"%@%i", ([self.Monitor.text doubleValue] == 0 && ![self.Monitor.text containsString: @"."])? @"" : self.Monitor.text, 9];
    }
}

-(void) clear {
    
    self.operation = -1;
    self.operand_1 = 0;
    self.operand_2 = 0;
}

-(double) generateResult {
    
    switch (self.operation) {
            
        case 0:
            return (self.operand_1 + self.operand_2);
            break;
            
        case 1:
            return (self.operand_1 - self.operand_2);
            break;
            
        case 2:
            return (self.operand_1 * self.operand_2);
            break;
            
        case 3:
            if(self.operand_2 == 0) {
                return 0;
            }
            
            return (self.operand_1 * 1.0 / self.operand_2);
            break;
            
        default:
            break;
    }
    
    return 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
