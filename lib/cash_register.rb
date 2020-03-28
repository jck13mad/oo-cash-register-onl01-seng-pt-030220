
class CashRegister
  
  attr_accessor :total, :discount, :item, :last_transaction
  
  def intitialize(discount = 0)
    @total = 0 
    @item = []
    @discount
  end
  
end