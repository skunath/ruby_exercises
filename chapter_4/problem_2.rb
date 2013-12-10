puts"Give me a number between 5 and 10"
num = gets.to_i

if num >= 5 and num <= 10
  puts "correct"
  
else 
  puts "incorrect"

end 


case
when num < 5 
  puts "below the range"
  
when (num >= 5 and num <= 10) 
  puts "within the range"
  
when num > 10 
  puts "above the range"
  
end
