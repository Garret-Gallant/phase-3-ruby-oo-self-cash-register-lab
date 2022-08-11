class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
      multi_item_total = price * quantity
      self.total += multi_item_total
  end

  def apply_discount
    if self.discount != 0
      discount_as_percent = (100 - self.discount.to_f) / 100
      self.total = (self.total * discount_as_percent).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items(item, price, quantity)
    itemArray = []
    itemArray.each do |item|
      itemArray.push(item)
    end
  end
end
