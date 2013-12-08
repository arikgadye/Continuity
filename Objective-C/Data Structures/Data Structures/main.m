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
            NSLog(@"- Starting Data Structures Demo -");
        Stack* myStack = [[Stack alloc] init];
        [myStack initWithSize:5];
            NSLog(@"\n");
        [myStack showStackExample:myStack];
    }
    return 0;
}

