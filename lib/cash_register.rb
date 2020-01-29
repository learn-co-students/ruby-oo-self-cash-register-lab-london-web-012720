class CashRegister

    attr_accessor :total, :discount, :array, :last_item

    def initialize(discount=0)
      @total = 0
      @discount = discount
      @array = []
    end

    def total
       @total
    end

    def add_item(title, price, quantity=1)
      @total += (price * quantity)
      @last_item = price * quantity
      quantity.times do
        @array << title
      end
    end

    def apply_discount
       if @discount  == 0
         "There is no discount to apply."
       else
          @total -= (@total / 100.0) * @discount
          "After the discount, the total comes to $#{@total.to_i}."
       end
    end

    def items
      @array
    end

    def void_last_transaction
      @total -= @last_item
    end
end
#
new = CashRegister.new(20)
new.add_item("sausage", 5, 10)
p new.apply_discount

p new.items

p new.total

p new.void_last_transaction
