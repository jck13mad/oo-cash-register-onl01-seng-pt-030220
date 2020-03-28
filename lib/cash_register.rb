
class CashRegister
  
  attr_accessor :total, :discount, :item, :last_transaction
  
  def intitialize(discount = 0)
    @total = 0 
    @item = []
    @discount = discount
  end
  
  def add_item(cost, name, number = 1)
    self.total = 
  end
  
end