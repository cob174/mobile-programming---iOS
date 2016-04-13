//
//  Compute.m
//  Calculator
//
//  Created by michael chiong on 6/14/15.
//  Copyright (c) 2015 michael chiong. All rights reserved.
//

#import "Compute.h"

@interface Compute()
@property (nonatomic, strong) NSMutableArray *programStack;
@end

@implementation Compute

@synthesize programStack = _programStack;

- (NSMutableArray *)programStack
{
    if (_programStack == nil) _programStack = [[NSMutableArray alloc] init];
    return _programStack;
}

- (void)pushOperand:(double)operand
{
    [self.programStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double)popOperand
{
    NSNumber *programObject = [self.programStack lastObject];
    if (programObject) [self.programStack removeLastObject];
    return [programObject doubleValue];
}

- (double)performOperation:(NSString *)operation
{
    double result = 0;
    double operand1 = 0;
    double operand2 = 0;
    
    if ([operation isEqualToString:@"+"])
    {
        operand2 = [self popOperand];
        operand1 = [self popOperand];
        result = operand1 + operand2;
    }
    else if ([operation isEqualToString:@"-"])
    {
        operand2 = [self popOperand];
        operand1 = [self popOperand];
        result = operand1 - operand2;
    }
    else if ([operation isEqualToString:@"*"])
    {
        operand2 = [self popOperand];
        operand1 = [self popOperand];
        result = operand1 * operand2;
    }
    else if ([operation isEqualToString:@"/"])
    {
        operand2 = [self popOperand];
        operand1 = [self popOperand];
        result = operand1 / operand2;
    }

    return result;
}

@end
