class Account
  
  @start_id = 0
  def initialize(name, balance)
    @name = name
    @balance = balance
    @id = Account.new_account_id
  end


  def self.new_account_id
    new_id = @start_id + 1
    return new_id
  end

  def to_s
    "bank account for: #{@name} with balance #{@balance}"
  end
  
  def get_balance
    "#{@balance}"
  end
  
  def self.current_id
    @start_id
  end

  def get_id
    @id
  end

end


t = Account.new("john smith", 50)

puts t

#puts Account.accounts


puts t.get_balance
puts t.get_id
u = Account.new("Jane Jobs", 500)
puts u.get_balance
puts u.get_id
puts Account.start_id

puts Account.current_id