puts "Give A"
ax = gets.to_i
ay = gets.to_i

puts "Give B"
bx = gets.to_i
by = gets.to_i

case
when ax == bx 
puts "Vertical Line"

when ay == by 
puts "Horizontal Line"

when ((ay - by) / (ax - bx)) < 0
puts "Negative Slope"

when ((ay -by) / (ax - bx)) > 0
puts "Postive Slope"

end 



