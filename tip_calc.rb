puts "How much is the bill?"
amount = gets.chomp.to_i

puts "How much would you like to tip?"
tip_percent = gets.chomp.to_f / 100

puts "How many people are you dining with tonight?"
split = gets.chomp.to_i

tip_amount = amount * tip_percent
puts "The tip total is #{tip_amount}"

my_share = (amount + tip_amount) / split
puts "You should leave #{my_share} for this meal."