require("pry")
require_relative("drink.rb")
require_relative("pub.rb")

class Customer

attr_reader :customer_name, :customer_wallet, :age


def initialize(name, wallet, age)
  @customer_name = name
  @customer_wallet = wallet
  @age = age
end

def buy_drink(drink, pub)
  if @customer_wallet >= drink.info[:price] && pub.can_buy(self)
    @customer_wallet -= drink.info[:price]
    pub.gain_money(drink.info[:price])
  else 
    return false
  end
end



end
