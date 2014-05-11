# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
Create Class 'Student'
	attr_accessor :scores and :first_name
Define #initialize method with two arguments: first_name(string), *scores(multiple numerable)
	Raise ArgumentError if *scores.length != 5
	Create class elements = to arguments
	End method
Define #average method
	Use Enumerable #.inject method with argument(:+) on @scores
	Divide sum by @scores.length
	End method

Define #letter_grade method
	@average = @scores.average
	Create 'if' statement with 5 clauses:
		if @average >= 90 
			return "A"
		elsif @average >= 80
			return "B"
		elsif @average >= 70
			return "C"
		elsif @average >= 60
			return "D"
		else 
			return "F"
	End if statement
	End method
Define #linear_search method with two arguments: students(array), (@first_name)
	Use #.each_with_index method on 'students' 
		Do with two elements equal to 'students' and the corresponding index: |students, i|
			Create 'if' statement with one clause:
				if students.first_name = @first_name
					return index
				End if statement (before else to return only one result)
				Else return '-1'
	End method
End class 
=end
# 3. Initial Solution
=begin
class Student
  attr_accessor :first_name, :scores

  def initialize(named_arguments)   #Use named arguments!
    @first_name = named_arguments[:first_name]
    @scores = named_arguments[:scores]
  end

  def average
  	@scores.inject(:+) / @scores.length
  end

  def letter_grade
  	@average = @scores.inject(:+) / @scores.length
  	if @average >= 90
  		return "A"
  	elsif @average >= 80
  		return "B"
  	elsif @average >= 70
  		return "C"
  	elsif @average >= 60
  		return "D"
  	else
  		return "F"
  	end
  end
  	
end

students = [Student.new(:first_name => "Alex", :scores => [91, 90, 90, 90, 89]),
			Student.new(:first_name => "Brad", :scores => [88, 86, 79, 79, 84]),
			Student.new(:first_name => "Cait", :scores => [78, 70, 69, 77, 72]),
			Student.new(:first_name => "Dave", :scores => [68, 60, 55, 72, 66]),
			Student.new(:first_name => "Fran", :scores => [58, 50, 41, 75, 44])
]

  def linear_search(students, test_name)
  	students.each_with_index do |student, i|
  		if student.first_name == test_name
  			return i
  		end
  		return -1
  	end
  end
=end

# 4. Refactored Solution
class Student
  attr_accessor :first_name, :scores

  def initialize(named_arguments)   #Use named arguments!
    @first_name = named_arguments[:first_name]
    @scores = named_arguments[:scores]
  end

  def average
  	@scores.inject(:+) / @scores.length
  end

  def letter_grade
  	@average = @scores.inject(:+) / @scores.length
  	if @average >= 90
  		return "A"
  	elsif @average >= 80
  		return "B"
  	elsif @average >= 70
  		return "C"
  	elsif @average >= 60
  		return "D"
  	else
  		return "F"
  	end
  end
  	
end

students = [Student.new(:first_name => "Alex", :scores => [91, 90, 90, 90, 89]),
			Student.new(:first_name => "Brad", :scores => [88, 86, 79, 79, 84]),
			Student.new(:first_name => "Cait", :scores => [78, 70, 69, 77, 72]),
			Student.new(:first_name => "Dave", :scores => [68, 60, 55, 72, 66]),
			Student.new(:first_name => "Fran", :scores => [58, 50, 41, 75, 44])
]

  def linear_search(students, test_name)
  	students.each_with_index do |student, i|
  		if student.first_name == test_name
  			return i
  		end
  		return -1
  	end
  end

# 1. DRIVER TESTS GO BELOW THIS LINE
require "test/unit"

class TestStudents < Test::Unit::TestCase

	def setup
		@students = [Student.new(:first_name => "Alex", :scores => [91, 92, 90, 88, 89]),
			Student.new(:first_name => "Brad", :scores => [88, 86, 79, 79, 84]),
			Student.new(:first_name => "Cait", :scores => [78, 70, 69, 77, 72]),
			Student.new(:first_name => "Dave", :scores => [68, 60, 55, 72, 66]),
			Student.new(:first_name => "Fran", :scores => [58, 50, 41, 75, 44])
			]
	end		
# Tests for release 0:
	def test_array
		assert_equal("Alex", @students[0].first_name, "The first student's name is not Alex.")
		assert_equal(5, @students[0].scores.length, "The first student does not have exactly 5 scores.")
		assert_not_equal(@students[0].scores[0], @students[0].scores[4], "The first student's first and third score aren't different.")
		assert_equal(88, @students[0].scores[3], "The first student's forth score is not 88")
	end
# Tests for release 1:
	def test_average
		assert_equal(90, @students[0].average, "The first student's average score is not 90")
		assert_equal("A", @students[0].letter_grade, "The first student's letter grade is not an A.")
	end
# Tests for release 2:
	def test_linear_search
		ls_sample = @students
		assert_equal(0, linear_search(ls_sample, "Alex"), "Alex is not the first student.")
		assert_equal(-1, linear_search(ls_sample, "NOT A STUDENT"), "Oddly, NOT A STUDENT, is the name of a student!")
	end
end

# 5. Reflection 
=begin
The hardest part of this challenge was the linear_search method.  
I tried several solutions and was unable to make it work without using an if statement.
I assume there is a variation of #.assoc that may have worked to reduce the amount of code.	
recreating tests as assert methods is something I'm putting more focus into, 
as I'm still weak in that area.	
=end