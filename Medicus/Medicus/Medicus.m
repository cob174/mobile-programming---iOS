//
//  Medicus.m
//  Medicus
//
//  Created by michael chiong on 6/20/15.
//  Copyright (c) 2015 michael chiong. All rights reserved.
//

#import "Medicus.h"

@interface Medicus ()
{
    NSArray * _symptomsData;
}
@end

@implementation Medicus

@synthesize display = _display;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _symptomsData = @[@"Select a symptom",@"cough", @"cold", @"fever", @"itch", @"headache", @"soreness", @"transdimensional space vortex", @"death"];
    
    self.symptoms.dataSource = self;
    self.symptoms.delegate = self;
    self.display.text = [NSString stringWithFormat:@"\nmedicine"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

//The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _symptomsData.count;
}

//The data to return for the row and column that's being passed in
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _symptomsData[row];
}

//Capture the pickerview selection
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    switch (row) {
        case 0:
            self.display.text = [NSString stringWithFormat:@"\nmedicine"];
            break;
        case 1:
            self.display.text = [NSString stringWithFormat:@"Dextromethorphan\nCough Drops\nRobitussin"];
            break;
        case 2:
            self.display.text = [NSString stringWithFormat:@"Dayquil\nNyquil\nRobitussin"];
            break;
        case 3:
            self.display.text = [NSString stringWithFormat:@"Tylenol\nAspirin\nAdvil"];
            break;
        case 4:
            self.display.text = [NSString stringWithFormat:@"Benadryl\nAllegra\nSarna"];
            break;
        case 5:
            self.display.text = [NSString stringWithFormat:@"Tylenol\nAdvil\nAleve"];
            break;
        case 6:
            self.display.text = [NSString stringWithFormat:@"Tyleno\nAdvil\nVics"];
            break;
        case 7:
            self.display.text = [NSString stringWithFormat:@"Matthew McConaughey\nMatthew McConaughey\nAdvil"];
            break;
        case 8:
            self.display.text = [NSString stringWithFormat:@"There is no escaping deaths embrace."];
        default:
            break;
    }
}



@end
