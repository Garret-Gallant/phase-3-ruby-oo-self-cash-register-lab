class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
      multi_item_total = price * quantity
      self.total += multi_item_total

      quantity.times do
        self.items << title
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
  end
end
