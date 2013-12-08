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

using namespace std;

// Declaring class Stack.
class Stack
{
	public:
		Stack(int stackSize);
		void push(int number);
		void pop();
		int stackCount();
		int getElementValue(int positionFromTop);
		void printStack();

	private:
		int *stack_ref;
		int max_length;
		int top_index;
};
