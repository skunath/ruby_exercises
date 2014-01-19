list_of_zeros = []

previous = -9999999999

for i in (-50000..50000).to_a
  x = i.to_f/1000
  value = ((x**4) + 17*(x**3) -416*(x**2)-612*x+2500)/500
  #puts "X: #{x}, Y:#{value}"
  
  if value == 0.0
    list_of_zeros << [x, value]
  end
  
  if value >= 0.0 and previous < 0.0
    puts "Positive Crossing: X: #{x}, Y:#{value}"
  elsif value < 0.0 and previous >= 0.0
    puts "Negative Crossing: X: #{x}, Y:#{value}"
  end
  previous = value
end
puts "Zero Crossings:"
puts list_of_zeros.to_s