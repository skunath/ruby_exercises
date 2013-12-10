puts "Give x"
x = gets.to_i

puts "Give y"
y = gets.to_i

puts "Give z"
z = gets.to_i

if x > 0
    if y > 0
        if z > 0
          puts "output 3"
        else 
          puts "output 2"
        end
   else 
        if z > 0
          puts "output 2"
          
        else 
          puts "output 1"
        end 
   end
else
    if y > 0
        if z > 0
          puts "output 0"
          
        else 
          puts "output 1"
        end
   else 
        if z > 0
            puts "output 1"
            
          else 
            puts "output 2"
          end # end inner z if
   end
end
