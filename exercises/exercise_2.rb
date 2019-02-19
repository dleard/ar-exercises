require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1.name = "victoria"
puts @store1.name
@store1.save

puts Store.find_by(name: 'victoria').name