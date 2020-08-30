require 'pry'

class CashRegister
  attr_accessor :total, :discount 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    item = {title: title, price: price.to_f, quantity: quantity}
    binding.pry
    @total += item[:price] * item[:quantity]
    
  end
 
 
end
