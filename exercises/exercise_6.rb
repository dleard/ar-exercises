require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './models/employee'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Tony", last_name: "Stark", hourly_rate: 1000)
@store1.employees.create(first_name: "Thor", last_name: "Odinson", hourly_rate: 1)
@store1.employees.create(first_name: "Hulk", last_name: "Smash", hourly_rate: 50)

@store2.employees.create(first_name: "Ultron", last_name: "Robobutt", hourly_rate: 100)
@store2.employees.create(first_name: "Thanos", last_name: "Snappyfinger", hourly_rate: 900)
@store2.employees.create(first_name: "Loki", last_name: "Odinson", hourly_rate: 1100)

puts "---Find and print Tony Stark's employee attributes---"
Employee.find_by(first_name: "Tony").attributes.each { |key, value| puts "#{key}: #{value}"}