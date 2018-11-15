class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end 
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end 
  
  def apply_discount
    if discount == 0
      result = "There is no discount to apply."
    else
      @total = ((100.0 - discount)/ 100) * @total
      result = "After the discount, the total comes to $#{@total.to_i}."
    end 
    
  end 
end