class Student < Person 
	def learn
		puts "I get it!"
	end
end
class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object."
end

class Person
	def initialize(name)
	end
end
