//
//  SecondViewController.m
//  TabbedApp
//
//  Created by michael chiong on 6/21/15.
//  Copyright (c) 2015 michael chiong. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:@"http://lasvegas.electricdaisycarnival.com/"];
    [self.edcView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onePressed:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"https://screen.yahoo.com/live/event/edc-1"];
    [self.edcView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (IBAction)twoPressed:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"https://screen.yahoo.com/live/event/edc-2"];
    [self.edcView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (IBAction)threePressed:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"https://screen.yahoo.com/live/event/edc-3"];
    [self.edcView loadRequest:[NSURLRequest requestWithURL:url]];
}
@end
