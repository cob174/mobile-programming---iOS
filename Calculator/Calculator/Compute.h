//
//  Compute.h
//  Calculator
//
//  Created by michael chiong on 6/14/15.
//  Copyright (c) 2015 michael chiong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Compute : NSObject

- (void)pushOperand:(double)operand;
- (double)performOperation:(NSString *)operation;

@end
