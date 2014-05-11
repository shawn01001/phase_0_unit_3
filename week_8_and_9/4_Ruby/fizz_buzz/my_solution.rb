# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
Define #method named "super_fizzbuzz" to require 1 argument (numerical array)
use Enumerable method #.map on argument followed by 'do' and '|variable|' to invoke folliwing statement on each element from argument
build 'if statement' with three conditions in this order:
	1: if element % 15 == 0 then string "FizzBuzz"
	2: if element % 5 == 0 then string "Buzz"
	3: if element % 3 == 0 then string "Fizz"
	else element remains the same
end if statement
end block
end method	
=end


# 3. Initial Solution
=begin
def super_fizzbuzz(array)
	array.map do |x|
		if (x % 15) == 0
		"FizzBuzz"
		elsif (x % 5) == 0
		"Buzz"
		elsif (x % 3) == 0
		"Fizz"
		else
		x
		end 
	end
end
=end


# 4. Refactored Solution

def super_fizzbuzz(array)
	array.map do |x|
		if (x % 15) == 0
		"FizzBuzz"
		elsif (x % 5) == 0
		"Buzz"
		elsif (x % 3) == 0
		"Fizz"
		else
		x
		end 
	end
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

require "test/unit"

class TestFizzBuzz < Test::Unit::TestCase

	def random_input_array(base, size)
  		(1..size).map { |i| base**(1+rand(15)) }
	end

	def test_three
		three = random_input_array(3,100)
		assert_equal((["Fizz"]*100), super_fizzbuzz(three), "Multiples of three should return 'Fizz'.")
	end

	def test_five
		five = random_input_array(5,100)
		assert_equal((["Buzz"]*100), super_fizzbuzz(five), "Multiples of five should return 'Buzz'.")
	end

	def test_fifteen
		fifteen = random_input_array(15,100)
		assert_equal((["FizzBuzz"]*100), super_fizzbuzz(fifteen), "Multiples of fifteen should return 'FizzBuzz'.")
	end

	def test_v4
		v4 = [1,2,3]
		assert_equal([1,2,"Fizz"], super_fizzbuzz(v4), "This should return: [1,2,'Fizz'].")
	end

	def test_v5
		v5 = [15, 5, 3, 1]
		assert_equal(["FizzBuzz", "Buzz", "Fizz", 1], super_fizzbuzz(v5), "This should return: ['FizzBuzz', 'Buzz', 'Fizz', 1].")
	end
end


# 5. Reflection 
=begin
The hardest part of this challenge was getting the assert tests to run smoothly.  
I realized I was missing 'require "test/unit"'.
If I were to refactor this, I would focus on the tests.  
In this case, we were asked to convert the rspec to assert methods.
Without	that criteria, the test methods could have been reduced using a #setup method.	
=end