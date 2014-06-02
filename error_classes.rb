	#Create a new error class (with an interesting name) that would be appropriate as a subclass 
	#to StandardError and another that would be appropriate as a subclass to Exception.



	class MyStandardError < StandardError
	end

	def raiseError
		raise MyStandardError, 'Ooops, somehting is not right. Lets raise hell.'
	end

	begin
		raiseError	

	# puts backtrace
	# rescue

		puts 'Lets see if we can salvage this ordeal.'
	end
		

	class OhhhhShitttt < Exception
	end
		