//
//  Stack.h
//  Data Structures
//
//  Created by Patrick Reynolds on 12/7/13.
//  Copyright (c) 2013 Patrick Reynolds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject
@property (strong, nonatomic) NSMutableArray* stack_ref;
@property int max_length;
@property int top_index;

-(id)init;
-(void)initWithSize:(int)stackSize;
-(void)push:(int)number;
-(void)pop;
-(NSInteger)stackCount;
-(id)getElementValue :(int)atPosition;
-(void)printStack;

@end
