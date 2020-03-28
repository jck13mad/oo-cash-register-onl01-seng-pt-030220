
class CashRegister
  
  attr_accessor :total, :discount
  
  def intitialize(discount=0)
    @total = 0 
    @items = []
    @discount = discount
    @last_item = []
  end
  
  def apply_discount
    if discount != 0 
      @total -= (@total * (@discount / 100.to_i))
      "After the discount, the total comes out to be #{@total.to_f}."
    else
      "There is no discount to apply."
    end
  end
  
  def add_item(cost, title, quantity = 1)
    @total += cost * quantity
    quantity.times do
      @items << title
    end
    @last_item = cost * quantity
  end
  
  
  def items
    @items
  end
  
  def void_last_transaction
    @items.delete_at(-1)
    self.total = self.total - @last_item
  end
end