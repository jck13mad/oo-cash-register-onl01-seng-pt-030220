
class CashRegister
  
  attr_accessor :total, :discount
  
  def intitialize(discount=0)
    @total = 0 
    @item = []
    @discount = discount
    @last_item = []
  end
  
  def add_item(cost, name, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << name
    end
  end
  
  def apply_discount
    if discount != 0 
      @total -= (@total * (@discount / 100.to_f))
      puts "After the discount, the total comes out to be #{@total.to_i}."
    else
      puts "There is no discount to apply."
    end
  end
  
  
end