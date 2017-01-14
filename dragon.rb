class Dragon 
	#var: name, asleep, stuff_in_belly, stuff_in_intestine 



	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 #full
		@stuff_in_intestine = 0 # doesn't need to go

		puts @name + " is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end

	def sleep
		puts "You put #{@name} to bed."
		@asleep=true
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
			end
		end
		if @asleep
			@asleep = false
			puts @name + ' slowly wakes up.'
		end
	end

	def walk
		puts "You  walk #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts "He giggles, which singes your eyebrows."
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
		if @asleep
			@asleep = false
			puts '...but wakes up when you stop.'
		end
	end

	private

		def hungry?
			@stuff_in_belly <= 2
		end

		def poopy?
			@stuff_in_intestine >=8
		end


		def passage_of_time

			if @stuff_in_belly > 0
				#move food from belly to intestine
				@stuff_in_belly = @stuff_in_belly -1
				@stuff_in_intestine = @stuff_in_intestine +1
			else #our dragon is starving
				if @asleep
					@asleep = false
					puts "#{@name} suddenly wakes up!"
				end
				puts "#{@name} is starving! In desperation, he ate YOU!"
				exit
			end

			if @stuff_in_intestine >=10
				@stuff_in_intestine =0
				puts "Whoops! #{@name} had an accident..."
			end

			if hungry?
				if @asleep
					@asleep = false
					puts "#{@name} suddenly wakes up!"
				end
				puts "#{@name}'s stomach grumbles."
			end

			if hungry?
				if @asleep
					@asleep = false
					puts "#{@name} suddenly wakes up!"
				end
				puts "#{@name} does the potty dance..."
			end
		end

	end


pet = Dragon.new "Spyro"

#variable for the user input
command = ""

while command != 'exit'
	puts "What do you want to do with dragon"
	command = gets.chomp.downcase

	if command == 'feed'
		pet.feed
	elsif command == 'walk'
		pet.walk
	elsif command == 'sleep'
		pet.sleep
	elsif command == 'rock'
		pet.rock
	elsif command == 'toss'
		pet.toss
	elsif command == 'exit'
		exit
	else
		puts "Sorry, I don't know what are you trying to do."
	end
end
