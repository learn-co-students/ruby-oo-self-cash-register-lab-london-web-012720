class CashRegister

    attr_accessor :total, :discount, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        quantity.times {@items << title}
        price = (price * quantity) 
        @total += price 
        @last_item_price = price
    end

    def apply_discount
        if discount > 0
        @total = @total - @discount * 10
        return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @total - @last_item_price
    end
end
