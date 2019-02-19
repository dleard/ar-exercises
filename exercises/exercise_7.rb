require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts Employee.count

puts "Enter a store name: "
new_store = gets.chomp

user_store = Store.create(name: new_store)
user_store.errors.full_messages.each { |error| puts error}