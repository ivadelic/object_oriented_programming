class Person
	def initialize(the_name)
		@name = the_name
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object."
	end
end

class Student < Person 
	def learn
		puts "I get it!"
	end
end

instructor_name = Instructor.new(" ")
puts "Hello my name is #{instructor_name}"

student_name = Student.new(" ")
puts "Hello my name is #{student_name }"


