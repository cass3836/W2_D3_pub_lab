require("pry")
require_relative("drink.rb")
require_relative("pub.rb")

class Customer

attr_reader :customer_name, :customer_wallet, :age, :drunkenness


def initialize(name, wallet, age, drunk)
  @customer_name = name
  @customer_wallet = wallet
  @age = age
  @drunkenness = drunk
end

def buy_drink(drink, pub)
  if @customer_wallet >= drink.info[:price] && pub.can_buy(self) && pub.sober_enough(self)
    @customer_wallet -= drink.info[:price]
    pub.gain_money(drink.info[:price])
    @drunkenness += drink.info[:alcohol_content]
  else
    return false
  end
end




end
