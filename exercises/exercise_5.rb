require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@allstoresum = Store.sum(:annual_revenue)
@allstoreavg = Store.average(:annual_revenue)
@beststores = Store.where(
"annual_revenue > ?", 1000000)
@beststorescount = Store.where(
"annual_revenue > ?", 1000000).count

puts @allstoresum
puts @allstoreavg
@beststores.each {|s| puts s.name}
puts @beststorescount
