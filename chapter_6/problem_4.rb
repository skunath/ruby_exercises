sample = [[[ 65, 67, 32], [234, 176,  0], [143,  0,  0]],
          [[255, 40, 51], [156, 41,  38], [  4,243,176]],
          [[255,255,255], [  0,  0,   0], [133, 28, 13]],
          [[ 26, 43,255], [ 48,  2,   2], [ 57, 89,202]]]
          
          
row = 0 
column = 0
pixel = 0
rpix = 0

hits = []

colhits = 0

while (row < sample.size)
  puts "row #{row}"
  while (column < sample [row].size)
    colhits += 1
    puts "cols #{column}"
    if (sample[row][column][0] > 100)
      if  (sample[row][column][1]) < (sample[row][column][0]/4) and (sample[row][column][2]) < (sample[row][column][0]/4)
        rpix = rpix + 1
        puts "row #{row} - column #{column}"
        puts
        hits << [row, column]
      end
    end

    pixel = 0
  column = column + 1
  end
  column = 0
  row = row + 1
end

puts "total cols: #{colhits}"

puts "The number of red pixels is: " + rpix.to_s  

puts "The list of pixels is: " + hits.to_s