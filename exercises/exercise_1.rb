require_relative '../setup'
require_relative './models/store'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

burnaby = Store.create(name: 'burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: 'richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: 'gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count
Store.find_by(name: 'burnaby').attributes.each_value { |value| puts value }

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)