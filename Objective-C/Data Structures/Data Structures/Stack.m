//
//  Stack.m
//  Data Structures
//
//  Created by Patrick Reynolds on 12/7/13.
//  Copyright (c) 2013 Patrick Reynolds. All rights reserved.
//

#import "Stack.h"

@implementation Stack
@synthesize stack_ref = _stack_ref;
@synthesize max_length, top_index;


-(NSMutableArray*)stack_ref
{
    if (!_stack_ref){
        _stack_ref = [[NSMutableArray alloc] init];
    }
    return _stack_ref;
}

-(id)init{
    self = [super init];
    NSLog(@"The Stack is initializing.");
    return self;
}

-(void)initWithSize:(int)stackSize{
    self.max_length = stackSize;
    NSLog(@"The stack size is: %d", self.max_length);
    self.top_index = -1;
    NSLog(@"The initial index is set to: %d", self.top_index);
    
}

-(void)push:(int)number{
    if (self.top_index == self.max_length - 1) {
        NSString* alert = [[NSString alloc] initWithFormat:@"Could not push %d to the stack at position %d. Stack is currently full.", number, self.top_index + 2];
        NSLog(@"%@", alert);
    }else {
        self.top_index = self.top_index + 1;
        NSNumber* numberToAdd = [[NSNumber alloc] initWithInt:number];
        [self.stack_ref insertObject:numberToAdd atIndex: self.top_index];
        NSString* alert = [[NSString alloc] initWithFormat:@"Added %d to the stack at position %d.", number, self.top_index + 1];
        NSLog(@"%@", alert);
    }
}

-(void)pop{
    if (self.top_index == -1) {
        NSLog(@"Error in pop - Stack is empty.");
    }else {
        NSLog(@"Popping %@ from the list.", [self.stack_ref objectAtIndex:self.top_index]);
        [self.stack_ref removeObjectAtIndex:self.top_index];
        self.top_index--;
    }
}

-(NSInteger)stackCount{
    return self.stack_ref.count;
}

-(id)getElementValue :(int)atPosition{
    return [self.stack_ref objectAtIndex:(self.top_index - atPosition)];
}

-(void)printStack{
    NSLog(@"Stack Details: ");
    int count = 1;
    for(id stackElement in self.stack_ref){
        NSLog(@"Number %@ is at position %d.", [self.stack_ref objectAtIndex:[self.stack_ref indexOfObject:stackElement]], count);
        count++;
    }
}

@end