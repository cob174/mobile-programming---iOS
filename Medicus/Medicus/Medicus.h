//
//  Medicus.h
//  Medicus
//
//  Created by michael chiong on 6/20/15.
//  Copyright (c) 2015 michael chiong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Medicus : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UITextView *display;
@property (strong, nonatomic) IBOutlet UIPickerView *symptoms;
@property (strong, nonatomic) IBOutlet UIImageView *symbol;
@end
