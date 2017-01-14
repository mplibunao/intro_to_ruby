puts 'Execise # 1'
puts 'Hello there, and what\'s your first name?'
first_name = gets.chomp
puts 'How about your middle name?'
middle_name = gets.chomp
puts 'Finally, what\'s your last name?'
last_name = gets.chomp
puts 'Pleased to meet you, ' + first_name + ' ' + middle_name +' ' + last_name + '. :)'
puts ""
puts "Execise # 2"
puts "Hi again #{first_name}. Can I ask what your favorite number is?"
favorite_number =  gets.chomp.to_i
better_number = favorite_number +1
puts "I would suggest #{favorite_number+1} as it is a bigger and better favorite number than #{favorite_number}"
