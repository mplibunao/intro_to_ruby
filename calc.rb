seconds = 60
minutes = 60
hours = 24
days = 365
years = 10
my_age = 24

hr_per_year = hours * days
min_per_decade = (((minutes * hours) * days ) * years)
age_in_seconds = ((((seconds * minutes )* hours )* days )* my_age)
chris_seconds = 1246000000
chris_age = (((chris_seconds / minutes) / hours) / days)

puts "There are #{hr_per_year} hours in a year"
puts "There are #{min_per_decade} minutes per decade"
puts "I am #{age_in_seconds} seconds old"
puts "Chris is #{chris_age} old"
