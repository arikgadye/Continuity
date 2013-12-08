/*
Created by: Patrick Reynolds
Language: C++

Description: This is a Stack data structure implemented in Ruby. 
This class provides the user with the ability to push and pop elements 
to the stack, along with alert messages when an action has taken place, 
or an error message when a specific action was rejected.
*/

#include <iostream>
#include <iomanip>
#include <cstring>

#include "stack.h"

using namespace std;

Stack::Stack(int stackSize)
{
	stack_ref = new int[stackSize];
	max_length = stackSize;
	top_index = -1;
	cout << " - Initializing stack - " << endl;
	cout << "Stack size: " << max_length << endl;
	cout << "Current top index: " << top_index << endl;
}

// Push Method which accepts a number to push to the stack.
void Stack::push(int number)
{
	if(max_length == top_index + 1){
	  cout << "Could not push " << number << " onto stack - Stack is full." << endl;
	}else {
		top_index++;
		stack_ref[top_index] = number;
		cout << "Added " << number << " to the stack at position " << top_index + 1 << "." << endl;
	}
}

// Pop Method which pops (removes) the top number off of the stack.
void Stack::pop()
{
	if(top_index == -1){
		cout << "Error in pop - Stack is full." << endl;
	}else {
		cout << "Popping " << stack_ref[top_index] << " from the stack." << endl;
		stack_ref[top_index] = -1;
		top_index--;
	}
}

// Method to return the current number of elements in the stack.
int Stack::stackCount()
{
	return top_index + 1;
}

// Method to retrieve (currently print) an element by passing the  
// desired number of positions away from the top of the stack.
// Passing 0 would return top, and passing n would return 
// n elements from the top of the stack.
int Stack::getElementValue(int positionFromTop)
{
	if(positionFromTop > max_length - 1){
		cout << "Error - out of stack bounds. The stack capicity is " << max_length << "." << endl;
		return NULL;
	}else {
		return stack_ref[top_index - positionFromTop];
	}
}

// Prints the current elements in the stack.
void Stack::printStack()
{
	int count = 1;
	for(int i = 0; i < top_index + 1; i++)
	{
		cout << "Number " << stack_ref[i] << " is at position " << count << "." << endl;
		count++;
	}
}


int main()
{
	Stack myStack = Stack(5);
	cout << endl;

	// Adding 4 elements to the stack.
	myStack.push(20);
	myStack.push(40);
	myStack.push(60);
	myStack.push(80);
	cout << endl;

	// Printing the current stack.
	myStack.printStack();
	cout << endl;

	// Adding a 5th element to the stack
	myStack.push(100);
	cout << endl;

	// Adding a 6th element to the stack. Should throw overflow error
	myStack.push(120);
	cout << endl;

	// Printing the stack. Should print all 5 elements.
	myStack.printStack();

	// Poping one element off the top of the stack. (Should pop 100)
	myStack.pop();
	cout << endl;

	// Printing stack. Showing 100 is no longer in the stack
	myStack.printStack();
	cout << endl;

	// Printing the value of n, in this case 0, elements from the top.
	// Should return top of the stack. (In this case 80)
	cout << myStack.getElementValue(0) << " - This is the top element." << endl;

	// Printing the value of n, in this case 1, elements from the top.
	// Should return first position from the top. (In this case value of 60.)
	cout << myStack.getElementValue(1) << " - This is the second element from the top of the stack." << endl;

	// Printing the value of n, in this case 2, elements from the top.
	// Should return second position from the top. (In this case value of 40.)
	cout << myStack.getElementValue(2) << " - This is the third element from the top of the stack." << endl;

	// Printing the value of n, in this case 4, elements from the top.
	// Should return third position from the top. (In this case the bottom of the stack.)
	cout << myStack.getElementValue(3) << " - This is the last element in the stack." << endl;
	cout << endl;

	// Printing out the special case where the element position chosed is out of
	// bounds of the current stack
	cout << myStack.getElementValue(10) << endl;
	cout << endl;

	// Popping off all elements in the stack
	myStack.pop();
	myStack.pop();
	myStack.pop();
	myStack.pop();

	// Popping off element when the stack is now empty.
	// Should display underflow error.
	myStack.pop();
	cout << endl;

	// Printing current stack count. (Currently 0)
	cout << "The current stack count is: " << myStack.stackCount() << "." << endl;

	return 0;
}
