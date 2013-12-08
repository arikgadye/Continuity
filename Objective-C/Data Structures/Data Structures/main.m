//
//  main.m
//  Data Structures
//
//  Created by Patrick Reynolds on 12/7/13.
//  Copyright (c) 2013 Patrick Reynolds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

// runStackExample executes an implementation scenereo which
// includes special cases and exceptions.
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Initializing instance of Stack.
        NSLog(@"- Starting Stack Demo -");
        Stack* myStack = [[Stack alloc] init];
        [myStack initWithSize:5];
        NSLog(@"\n");
        
        // Adding 4 elements to the stack.
        [myStack push:20];
        [myStack push:40];
        [myStack push:60];
        [myStack push:80];
        NSLog(@"\n");
        
        // Printing the current stack.
        [myStack printStack];
        NSLog(@"\n");
        
        // Adding a 5th element to the stack
        [myStack push:100];
        NSLog(@"\n");
        
        // Adding a 6th element to the stack. Should throw overflow error
        [myStack push:120];
        NSLog(@"\n");
        
        // Printing the stack. Should print all 5 elements.
        [myStack printStack];
        NSLog(@"\n");
        
        // Poping one element off the top of the stack. (Should pop 100)
        [myStack pop];
        NSLog(@"\n");
        
        // Printing stack. Showing 100 is no longer in the stack
        [myStack printStack];
        NSLog(@"\n");
        
        // Printing the value of n, in this case 0, elements from the top.
        // Should return top of the stack. (In this case 80)
        NSLog(@"%@ - This is the top element.", [myStack getElementValue:0]);
        
        // Printing the value of n, in this case 1, elements from the top.
        // Should return first position from the top. (In this case value of 60.)
        NSLog(@"%@ - This is 1 position from the top.", [myStack getElementValue:1]);
        
        // Printing the value of n, in this case 2, elements from the top.
        // Should return second position from the top. (In this case value of 40.)
        NSLog(@"%@ - This is 2 positions from the top.", [myStack getElementValue:2]);
        
        // Printing the value of n, in this case 4, elements from the top.
        // Should return third position from the top. (In this case the bottom of the stack.)
        NSLog(@"%@ - This is the last element.", [myStack getElementValue:3]);
        NSLog(@"\n");
        
        // Popping off all elements in the stack
        [myStack pop];
        [myStack pop];
        [myStack pop];
        [myStack pop];
        
        // Popping off element when the stack is now empty.
        // Should display underflow error.
        [myStack pop];
        NSLog(@"\n");
        
        // Printing current stack count. (Currently 0)
        NSLog(@"Current stack count: %ld", (long)[myStack stackCount]);
    }
    return 0;
}

