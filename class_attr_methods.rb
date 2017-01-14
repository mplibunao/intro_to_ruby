class Student
	attr_accessor :first_name, :last_name, :primary_phone_number

	def introduction(target)
		puts "Hello #{target}! I'm #{first_name}"
	end

	def favorite_number
		7
	end
end

mp = Student.new
mp.first_name = "Mark"
mp.last_name = "Libunao"
mp.introduction('Pupsy')
puts "#{mp.first_name}'s favorite number is #{mp.favorite_number}."