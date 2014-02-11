class Tv
  @list_of_tvs = []
  
  def self.what_kinds()
    puts "test"
    
  end
  
  
  def initialize(size, hd, standard)
    @size = size 
    @hd = hd
    @standard = standard
    Tv.add_tv_to_list(self)
  end

  def size
    return @size
  end
  
  def self.add_tv_to_list(tv)
    @list_of_tvs << tv
  end
  
  def self.list
    puts @list_of_tvs.to_s
    puts "test..."
  end
  
  def to_s
    puts "TV: #{@size}"
  end
  
end

puts Tv.what_kinds
puts Tv.list


puts "%" * 50


new_tv = Tv.new(12,true, "ANSI")
puts new_tv.size


new_tv2 = Tv.new(24,true, "ANSI")
puts new_tv2.size

arrivals = [new_tv, new_tv2]
puts arrivals
puts "*" * 50
puts Tv.list