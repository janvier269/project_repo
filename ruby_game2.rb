class DayOut
	#initialize method start
	def initialize
		resize_window
		puts "What do you want to do?"
		option = gets.chomp
		what_to_do (option)
	#initialize method end
	end
	
	#resize window
	def resize_window 
		print "\e[8;20;91t"
		puts "-------------------------------------------------------------------------------------------"
		puts "-------------------------------------------------------------------------------------------"
		puts "Welcome to Fort Lauderdale!"
		puts "A few things i would recommend: the beach, a bike ride, get something to eat, grab a drink."
	end
	#end resize window

	#what to do method starts
	def what_to_do (option)
		if option.include?("be")
			beach_option
		elsif option.include?("bi")
			bike_option
		elsif option.include?("eat")
			eat_option
		elsif option.include?("dr")
			drink_option
		else
			else_option
		end

	end
	#what to do method ends

	#start beach option
	def beach_option 
		puts "great choice, do you want to lay out, swim or paddleboard"

		beach_activity = gets.chomp

		lay_out if beach_activity.include?("l")
			
		swim if beach_activity.include?("s")
			
		paddleboard if beach_activity.include?("p")	
	end
	#end beach option

	#beach methods 
	def lay_out 
		puts "did you bring sunscreen?"
		sunscreen = gets.chomp
		message = sunscreen.include?("y") ? "That was smart! Have fun! Enjoy your stay!" : "you may want to reconsider."
		puts message
	end

	def swim
		puts "how fast can you swim?"
		swim_speed = gets.chomp
		message = swim_speed.include?("f") ? "Have fun!" : "Watch out for sharks!"
		puts message
	end

	def paddleboard
		puts "how is your balance? (good or bad)"
		balance = gets.chomp
		message = balance.include?("g") ? "I like the confidence, have fun!" : "watch out for sharks!!"
		puts message
	end
	#end beach methods
		
	def bike_option
    	puts "great choice, do you want to ride along the beach or on las olas"
    	bike = gets.chomp
    	message = bike.include?("b") ? "you'll love the breeze, have fun!" : "have fun with those bridges!"
    	puts message
	end 

	def eat_option
    	puts "great choice, what do you want to eat?"
    	eat = gets.chomp
    	message = eat.include?("f") ? "Good thinking, you are going to love it." : "nah, try the local fish."
    	puts message
	end 

	def drink_option 
		puts "you've made the right choice. what do you want to drink?"
		drink = gets.chomp
		message = drink.include?("b") ? "Good thinking, I'll join you." : "Wrong answer, Fort Lauderdale is a beer town."
		puts message
	end

	def else_option
		puts "That was not an option. You are on your own now. Good luck!"
		puts "-------------------------------------------------------------------------------------------"
		puts "-------------------------------------------------------------------------------------------"
	end
end

friday = DayOut.new
