arr = [45,7,55,86,98,20,15,,44,7]
index = 0
a = 0
b = 0
c = 0

while (index < arr.size)
  a = arr[index]
  p = a + b 
  a = b 
  b = p 
  index = index + 1
end 
avg = p / arr.size

puts " The average is:"
puts avg

a1 = Array.new
a2 = Array.new 
index = 0

while (index < arr.size)
  if (arr[index] >= avg)
    a2 << arr[index]
  else
    a1 << arr[index]
  end      
index = index + 1
end

puts "array large:"
puts a2
puts "array small:"
puts a1  



#################
# alternative
#################

puts "&" * 50
puts "Alternative"
puts "$" * 50

# create new arrays
orig_size = arr.size
split_size = orig_size/2
first_array_size, second_array_size = split_size, split_size
if split_size * 2 != orig_size
  first_array_size = split_size + 1
end

  
arr1 = Array.new()
arr2 = Array.new()

outer_index = 0
while (outer_index < first_array_size)
  index = 0
  lowest = 999999
  lowest_index = -1
  while (index < arr.size)
    if arr[index] < lowest
      lowest = arr[index]
      lowest_index = index
    end
    index += 1
  end
  arr.delete_at(lowest_index)
  arr1 << lowest
  outer_index += 1
  lowest = 999999
end



puts arr1
puts " - " * 50
puts arr




