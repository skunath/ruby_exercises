class CPoint

  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def find_slope(cpoint_2)
    if (@x - cpoint_2.x == 0)
      slope = 0
    else
      slope = (cpoint_2.y - @y)/(cpoint_2.x - @x).to_f
    end
    return slope
  end
  
  
  def x
    return @x
  end
  
  def y
    return @y
  end
    
  
end


a_point_1 = CPoint.new(0,0)
puts a_point_1.x
a_point_2 = CPoint.new(3,4)
puts a_point_2.x
puts a_point_2.y
puts "%" * 50
puts a_point_1.find_slope(a_point_2)
puts "%" * 50
b_point_1 = CPoint.new(2,3)
b_point_2 = CPoint.new(6,5)

puts b_point_1.find_slope(b_point_2)

c_point_1 = CPoint.new(2,2)
c_point_2 = CPoint.new(2,7)

puts c_point_1.find_slope(c_point_2)
