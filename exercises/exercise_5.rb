require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "---Sum of all annual_revenue---"
puts Store.sum(:annual_revenue)
puts "---Average annual_revenue---"
puts Store.average(:annual_revenue)
puts "---# of stores generating 1000000+ annual_revenue"
puts Store.where("annual_revenue > 1000000").count