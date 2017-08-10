//
//  ViewController.m
//  DiscountCaculator
//
//  Created by Jiahe Chang on 6/28/17.
//  Copyright © 2017 Jiahe Chang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (weak, nonatomic) IBOutlet UISegmentedControl *controlPad;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UILabel *savedAmount;
@property (weak, nonatomic) IBOutlet UILabel *totalAmount;
@property (weak, nonatomic) IBOutlet UITextField *discountField;

@end

@implementation ViewController
- (IBAction)didTapControlPad:(id)sender {
    [self updateValue];
}
- (IBAction)didTapScreen:(id)sender {
    [self updateValue]; 
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateValue
{
    [self.view endEditing:YES];
    
    CGFloat billAmount = [self.inputTextField.text floatValue];
    CGFloat discountRate = 1 - [self.discountField.text floatValue] / 100;
//    NSArray *discountRate = @[@(0.9),@(0.8),@(0.7)];
    
//    CGFloat savedPrice = billAmount * (1 - [discountRate[[self.controlPad selectedSegmentIndex]] floatValue]);
    CGFloat savedPrice = billAmount * (1 - discountRate);
//    CGFloat totalPrice = billAmount * [discountRate[[self.controlPad selectedSegmentIndex]] floatValue];
    CGFloat totalPrice = billAmount * discountRate;
    
    self.savedAmount.text = [NSString stringWithFormat:@"$%10.2f",savedPrice];
    self.totalAmount.text = [NSString stringWithFormat:@"$%10.2f",totalPrice];
}


@end
