
class CashRegister
  
  attr_accessor :total, :discount
  
  def intitialize(discount=0)
    @total = 0 
    @item = []
    @discount = discount
    @last_item = []
  end
  
  def add_item(cost, name, number = 1)
    self.total = cost * number
    @items << name
  end
  
  def apply_discount
    if discount != 0 
      @total -= (@total * ())
    end
  end
  
end