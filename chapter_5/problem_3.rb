puts "What is your interest rate?"
rate = gets.to_i
puts "What is your deposit amount? "
deposit = gets.to_i
puts "What is your total number of periods? "
periods = gets.to_i

current_period = 1
current_return = deposit
while (current_period <= periods)
  current_return = current_return * (1 + (rate.to_f/100))
  puts "End of period: #{current_period}"
  current_period += 1
end
puts "Final return: #{current_return}"
