begin
  oil_log = File.open("oil_log","r")
  oil_log.close()
rescue
  oil_log = File.open("oil_log","w")
  oil_log.close()
end


puts "Oil Changes?"
oil_log = File.open("oil_log","r")
for line in oil_log
  puts line
end
oil_log.close()

puts "Oil changed at what mileage? "
oil_mileage = 0
oil_mileage = gets 
oil_mileage = oil_mileage.to_i
oil_log = File.open("oil_log","r+")
oil_log.append oil_mileage
oil_log.close()







