require 'pry'

class CashRegister
  attr_accessor :total, :discount 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    item = {title: title, price: price.to_f, quantity: quantity}
    @total += item[:price] * item[:quantity]
    item
  end
  
  
  def apply_discount
    if @discount > 0 
      discount = total * (@discount.to_f / 100)
      @total -= discount
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    items = [] 
    @items.each do |item|
      binding.pry
      item[:quantity].times do 
        items << item[:title]
      end
    end
     return items
  end
  
  
 
 
end
