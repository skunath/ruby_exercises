puts 'Please enter three words:'
input_line = gets

words = input_line.split
if words.count > 3 or words.count < 3
  puts "Entered wrong number of words: #{words.count}."
  exit()
else
  average_chars = words.join.size / 3.0
  puts "Average number of characters per word is #{average_chars}"
end