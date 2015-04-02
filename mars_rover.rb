class Rover
	def initialize (init_x, init_y, init_direction)
		@x = init_x
		@y = init_y
		@direction = init_direction
	end

	def read_instructions(user_input)
		
	end

	def move_forward 
		if @direction == "N"
			@y += 1
		end
	end

	def turn_left
		if @direction=="N"
			@direction= "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		else @direction == "E"
			@direction = "N"
		end
	end

	def turn_right
		if @direction=="N"
			@direction="E"
		elsif @direction=="E"
			@direction="S"
		elsif @direction=="S"
			@direction="W"
		else @direction=="W"
			@direction="N"	
		end
			
	end

	def to_s
		"I am at #{@x}, #{@y}, facing #{@direction}."
	end
end

my_rover = Rover.new(2, 2, "N")
puts my_rover
my_rover.move_forward
puts my_rover
