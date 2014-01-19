puts "Give numer"
a = gets.to_i

puts "Give dom"
b = gets.to_i

d = a - b

until (d < b)
  d = (d - b)
end
puts d  