require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
# require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

@store5 = Store.create(
name: 'R1',
annual_revenue: 1200,
mens_apparel: false,
womens_apparel: true,
)

@store6 = Store.create(
name: 'Room2',
annual_revenue: 0,
mens_apparel: false,
womens_apparel: true,
)

@store7 = Store.create(
name: 'Room3',
annual_revenue: 10000,
mens_apparel: false,
womens_apparel: false,
)

@store8 = Store.create(
name: 'Ok',
annual_revenue: 10000,
mens_apparel: true,
womens_apparel: true,
)

@dude3 = Employee.create(first_name: "No store", last_name: "Dude2", hourly_rate: 40)

@store1.employees.create(first_name: nil, last_name: "No first", hourly_rate: 40)

@store1.employees.create(first_name: "No last", last_name: nil, hourly_rate: 40)

@store1.employees.create(first_name: "No cash", last_name: 'cash', hourly_rate: 0)
