require("pry")
require_relative("drink.rb")
require_relative("pub.rb")

class Customer

attr_reader :customer_name, :customer_wallet


def initialize(name, wallet)
  @customer_name = name
  @customer_wallet = wallet
end

def buy_drink(drink, pub)
  if @customer_wallet >= drink.info[:price]
    @customer_wallet -= drink.info[:price]
    pub.gain_money(drink.info[:price])
  end
end


end
