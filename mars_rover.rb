class Plateau		
	def initialize(max_x,max_y)
		$max_x = max_x
		$max_y = max_y
		$min_x = 0
		$min_y = 0 
	end
	def to_s
		puts "The plateau is #{$max_x} by #{$max_y}."
	end
end

class Rover

	def initialize(init_x, init_y, init_direction)
		@x = init_x
		@y = init_y
		@direction = init_direction
	end

	def turn_left
		if @direction == "N" &&
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

	def read_instructions(user_input)
		commands = user_input.split(//)
		commands.each do |a|
			if a == "M"
				move_forward
			elsif a == "L"
				turn_left
			elsif a == "R"
				turn_right
			else return "We do not accept these directions."
			end
		end
	end



	def to_s
		"I am at #{@x}, #{@y}, facing #{@direction}."
	end
end


	def plateau
		if $x>=@max_x
			puts "YOU'RE OFF THE GRID! PULL BACK ON THE Y AXIS, MAN."
		elsif @y>=max_y
			puts "YOU'RE GONNA FALL OFF THE PLATEAU!"
		else put to_s
		end
	end
end

rover1 = Rover.new(0,0,"N")
rover2 = Rover.new(2,2,"W")
# plateau_max = Plateau.new(5,5)
# rover1.plateau_max
puts "Rover 1 started at these coordinates: #{rover1}; and Rover2 at #{rover2}."
puts "M is move forward, L is turn 'Left' and R is turn 'Right.' Give rover1 five directions for it to follow."
user_instructions1=gets.chomp
puts "Now give five instruction for Rover 2"
user_instructions2=gets.chomp
rover1_read=rover1.read_instructions("#{user_instructions1}")
rover2_read=rover2.read_instructions("#{user_instructions2}")
puts "Rover 1 has now moved: #{rover1} and Rover 2 has moved:#{rover2}"


# rover2 = Rover.new(0,0,"N")
# puts "Rover 2 started at these coordinates: #{rover2}"
# puts "M is move forward, L is move 'Left' and R is move 'Right.' Give rover2 five direction for it to follow."
# rover2_read = rover2.read_instructions("#{user_instructions2}")
# user_instructions2=gets.chomp
# puts "Rover 2 has now moved: #{rover2}"





# if @x>=@max_width
# 	puts "YOU'RE OFF THE PLATEAU! Pull back on the y axis!"
# 	elsif @y>=@max_length
# 	puts "YOU'RE GONNA FALL OF THE PLATEAU! Go back on the x axis!"
# 	else puts to_s
# end
# end

# rover1 = Rover.new(0,0, "N")
# puts "(Rover 1 started at these coordinates: #{rover1})"


# rover1.read_instructions("MMLLRRMMMM")
# puts "Rover 1 has now moved: #{rover1}"

# # rover_2= Rover.new


#the_plateau = Plateau.new(5,5)
#rover_with_restrictions= my_rover.the_plateau