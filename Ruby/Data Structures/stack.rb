=begin
Created by: Patrick Reynolds
Language: Ruby

Description: This is a Stack data structure implemented in Ruby. 
This class provides the user with the ability to push and pop elements 
to the stack, along with alert messages when an action has taken place, 
or an error message when a specific action was rejected.
=end

# Declaring class stack.
class Stack
	def initialize(size)
		@stack_ref = Array.new
		@max_len = size
		@top_index = -1
	end

	# Push Method which accepts a number to push to the stack.
	def push(number)
		if @top_index == @max_len - 1
			puts "Could not push #{number} onto stack - Stack is full."
		else 
			@top_index += 1
			@stack_ref[@top_index] = number
			puts "Added #{number} to the stack at position #{@top_index + 1}."
		end
	end

	# Pop Method which pops (removes) the top number off of the stack.
	def pop
		if @top_index == -1
			puts "Error in pop - stack is empty."
		else 
			puts "Popping #{@stack_ref[@top_index]} from the list."
			@stack_ref.delete_at(@top_index)
			@top_index -= 1
		end
	end

	# Method to return the current number of elements in the stack
	def stackCount
		return @stack_ref.count
	end

	# Method to retrieve (currently print) an element by passing the  
	# desired number of positions away from the top of the stack.
	# Passing 0 would return top, and passing n would return 
	# n elements from the top of the stack.
	def getElementValue(position)
		if @top_index > -1
			if position > stackCount
				puts "Sorry, there are only #{stackCount} elements in the stack."
			elsif position == 0
				puts "#{@stack_ref[@top_index - position]} - This is the top element."
			elsif position == stackCount
				puts "#{@stack_ref[0]} - This is the last element."
			elsif position == (stackCount - (stackCount - 1))
				puts "#{@stack_ref[@top_index - position]} - This is #{position} position from the top."
			else
				puts "#{@stack_ref[@top_index - position]} - This is #{position} positions from the top." 
			end
		else
			puts "Error. No elements currently in the stack."
		end
	end

	# Prints the current elements in the stack.
	def printStack
		puts "Stack details:"
		count = 1
		@stack_ref.each do |element|
			puts "Number #{element} is at position #{count}."
			count += 1
		end
	end
end

# runStackExample executes an implementation scenereo which
# includes special cases and exceptions.
def runStackExample

	# Initializing instance of Stack.
	mystack = Stack.new(5)
	puts ""

	# Adding 4 elements to the stack.
	mystack.push(20)
	mystack.push(40)
	mystack.push(60)
	mystack.push(80)
	puts ""

	# Printing the current stack.
	mystack.printStack
	puts ""

	# Adding a 5th element to the stack
	mystack.push(100)
	puts ""

	# Adding a 5th element to the stack. Should throw overflow error
	mystack.push(120)
	puts ""

	# Printing the stack. Should print all 5 elements
	mystack.printStack
	puts ""

	# Poping one element off the top of the stack. (Should pop 100)
	mystack.pop
	puts ""

	# Printing stack. Showing 100 is no longer in the stack
	mystack.printStack
	puts ""

	# Printing the value of n, in this case 0, elements from the top.
	# Should return top of the stack. (In this case 80)
	mystack.getElementValue(0)

	# Printing the value of n, in this case 1, elements from the top.
	# Should return first position from the top. (In this case value of 60.)
	mystack.getElementValue(1)

	# Printing the value of n, in this case 2, elements from the top.
	# Should return second position from the top. (In this case value of 40.)
	mystack.getElementValue(2)

	# Printing the value of n, in this case 4, elements from the top.
	# Should return third position from the top. (In this case the bottom of the stack.)
	mystack.getElementValue(4)
	puts ""

	# Popping off all elements in the stack
	mystack.pop
	mystack.pop
	mystack.pop
	mystack.pop

	# Popping off element when the stack is now empty.
	# Should display underflow error.
	mystack.pop
	puts ""

	# Printing current stack count. (Currently 0)
	puts "Current stack count: #{mystack.stackCount}"
	puts ""
end


# Executing stack example.
runStackExample













