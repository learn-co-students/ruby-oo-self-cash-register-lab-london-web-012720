
require "pry"
class CashRegister

    attr_accessor :total, :discount, :last_tansaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount

  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @total_item ||= []
    self.total = total + (price * quantity)
    quantity.times do 
        @total_item.push(item)
    end

    @price_total ||= []

    @last_tansaction = price * quantity

    @price_total << price

  end

  def apply_discount

    if @discount === 0
        return "There is no discount to apply."
   

    else
        discount_price = (self.total * @discount) / 100
        self.total -= discount_price
        return "After the discount, the total comes to $#{self.total}."
     
    end
  end

  def items

  @total_item
   
  end

  def void_last_transaction 
   
    # if self.items.length  > 0
    #     self.items.pop
    # elsif self.items.length < 1
    #     self.total = 0
    # end
    self.total = self.total - @last_tansaction

  end

end