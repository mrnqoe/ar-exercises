require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Tony", last_name: "Dude1", hourly_rate: 40)

@store2.employees.create(first_name: "Tony", last_name: "Dude2", hourly_rate: 40)

@store2.employees.create(first_name: "Emilia", last_name: "Dude2", hourly_rate: 40)

@allsotres = Store.all

@allsotres.each do |s|
  s.employees.create(first_name: "Tony", last_name: "Dude2", hourly_rate: 40)
end
