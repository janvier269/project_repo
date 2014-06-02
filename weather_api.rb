require 'unirest'

def prompt
	print "> "
end

puts "What city do you want to look up?"
puts "\tExamples: Los Angeles, Miami, New York"
prompt
city = gets.chomp

response = Unirest.get "https://george-vustrey-weather.p.mashape.com/api.php", 
  headers: { "X-Mashape-Authorization" => "3Vl8Hk3kyx1v1oEx3hb7tWpMRnYqN4gT"},
  parameters: { "location" => city}

puts "What day of the week are you looking for?"
puts "\tExamples: Sun, Mon, Tue, Wed, Thu, Fri, Sat."
day_of_week = gets.chomp
	if day_of_week == "Sun"
		puts response.body[0]
	elsif 
		day_of_week == "Mon"
		puts response.body[1]
	elsif 
		day_of_week == "Tue"
		puts response.body[2]
	elsif
		day_of_week == "Wed"
		puts response.body[3]
	elsif
		day_of_week == "Thu"
		puts response.body[4]
	elsif
		day_of_week == "Fri"
		puts response.body[5]
	else
		day_of_week == "Sat"
		puts response.body[6]
	end






