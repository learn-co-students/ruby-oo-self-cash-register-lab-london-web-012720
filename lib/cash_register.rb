require "pry"
class CashRegister
    attr_accessor :discount, :total, :items, :last_item_total
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_total = []
    end

    def add_item(title, price, quantity=1)
        self.total = self.total + price * quantity 
        quantity.times do
            @items << title
        end
        @last_item_total << price * quantity
    end

    def apply_discount
        if self.discount > 0
            self.total = self.total - self.total * (self.discount / 100.00)
            return "After the discount, the total comes to $#{self.total.round(0)}."
        else
             return "There is no discount to apply."
        end        
    end

    def void_last_transaction
        self.total = self.total - self.last_item_total[-1]
        self.last_item_total.pop
        self.items.pop
        self.total
    end

end
# cash_register = CashRegister.new
# cash_register.add_item("apple", 0.99)
# cash_register.add_item("tomato", 1.76)
# cash_register.add_item("tomato", 1.76, 2)
#binding.pry
# total = total - total * coupon / 100.00
