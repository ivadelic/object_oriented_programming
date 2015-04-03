class Rover 
	def initialize (init_x, init_y, init_direction)
		@x = init_x
		@y = init_y
		@direction = init_direction
	end

	def read_instructions(user_input)
		commands = user_input.split(//)
		commands.each do |x|
			if x == "M"
				move_forward
			elsif x == "L"
				turn_left
			elsif x == "R"
				turn_right
			end
		end
	end

	def move_forward 
		if @direction == "N"
			@y += 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		else @direction == "W"
			@x -=1
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		else @direction == "E"
			@direction = "N"
		end
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		else @direction == "W"
			@direction = "N"	
		end
			
	end

	def to_s
		"I am at #{@x}, #{@y}, facing #{@direction}."
	end
end

my_rover = Rover.new(10,10, "N")
puts my_rover

my_rover.move_forward
puts my_rover

my_rover.read_instructions("MM")
puts my_rover 

# rover_2= Rover.new

class Plateau 
	def initialize(height, width)
		@max_height = x
		@max_width = y
	end
end

the_plateau = Plateau.new(5,5)
rover_with_restrictions= my_rover.the_plateau

