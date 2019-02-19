require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Friendlyneighbourhood", last_name: "Spiderman", hourly_rate: 90)
Employee.find_by(first_name: "Friendlyneighbourhood").attributes.each { |key, value| puts "#{key}: #{value}"}
