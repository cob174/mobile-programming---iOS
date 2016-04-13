//
//  Calculator.m
//  Calculator
//
//  Created by michael chiong on 6/14/15.
//  Copyright (c) 2015 michael chiong. All rights reserved.
//

#import "Calculator.h"
#import "Compute.h"

@interface Calculator ()
@property (nonatomic) BOOL enteringNumber;
@property (nonatomic, strong) Compute *comp;
@property (nonatomic, weak) NSString *operationUserHasPressed;
@end

@implementation Calculator

@synthesize display = _display;
@synthesize enteringNumber = _enteringNumber;
@synthesize comp = _comp;
@synthesize operationUserHasPressed = _operationUserHasPressed;

- (Compute *)comp
{
    if (!_comp) {
        _comp = [[Compute alloc] init];
    }
    return _comp;
}

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *numberEntered = sender.currentTitle;
    if (self.enteringNumber) {
        self.display.text = [self.display.text stringByAppendingString:numberEntered];
    } else {
        self.display.text = numberEntered;
        self.enteringNumber = YES;
    }
}

- (IBAction)operationPressed:(UIButton *)sender
{
    self.operationUserHasPressed = sender.currentTitle;
    [self.comp pushOperand:[self.display.text doubleValue]];
    self.enteringNumber = NO;
}

- (IBAction)equalsPressed:(UIButton *)sender
{
    double result = 0;
    [self.comp pushOperand:[self.display.text doubleValue]];
    result = [self.comp performOperation:self.operationUserHasPressed];
    NSString *resultString = [NSString stringWithFormat:@"%g", result];
    self.display.text = resultString;
}

- (IBAction)clearPressed:(UIButton *)sender
{
    self.enteringNumber = NO;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Are you sure you want to clear?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Yes", nil]; [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *zero = @"0";
    if (buttonIndex == 1) {
        /*while (![self.comp isEmpty]) {
         [self.comp popOperand];
         }*/
        self.display.text = zero;
    }
}

@end
