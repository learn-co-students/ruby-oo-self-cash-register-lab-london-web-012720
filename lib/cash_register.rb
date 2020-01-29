class CashRegister

    attr_accessor :discount, :total, :last_transaction, :items


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @total +=  price * quantity

            quantity.times do 
                 
            @items << title
            @last_transaction = price * quantity
            end 

    end

    def apply_discount
        if discount > 0 
            @total -= discount.to_f * 10
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    # def items
    #     @cart
    # end

    def void_last_transaction
        @total -= @last_transaction
    end
    

end 