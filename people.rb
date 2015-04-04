class Person 
	def initialize(name)
		@name = name 
	end

	def to_s
		puts "My name is #{@name}"
	end
end

class Student<Person
	def initialize(learn)
		puts "I get it!" 
		super
	end
end

class Instructor<Person
		def initialize(teach)
			puts "Everything in Ruby is an object!"
			super
		end
end

instructor_name = Instructor.new("Chris").to_s
student_name = Student.new("Cristina").to_s


# puts Student.new.teach 
##There is no way of making this work because we're not following the line of inheritance. 'Student' class parent is 'Person' not 'Instructor'.
