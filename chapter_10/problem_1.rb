class Item
  def initialize(item, maker)
    @item = item
    @maker = maker
  end
  
  def display 
    puts "Item ==> " + @item
    puts "Maker ==> " + @maker
  end
end


class ItemNumber < Item
  def initialize(item, maker, number)
    super(item, maker)
    @number = number
  end
  
  def display
    puts "Number: #{@number}"
    super()
  end

  def print_number()
    puts "Item: #{@item} - #{@number}"
  end

end

a = Item.new("TV", "Toshiba")
b = ItemNumber.new("TV", "Toshiba", "54")
a.display
puts "*" * 50
b.display

puts "&" * 50
b.print_number()
    
  