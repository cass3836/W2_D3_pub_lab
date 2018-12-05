require("pry")
require_relative("customer.rb")
require_relative("drink.rb")

class Pub

attr_reader :pub_name, :till_amount, :drink_collection


def initialize(name, till, drinks)
  @pub_name = name
  @till_amount = till
  @drink_collection = drinks
end

# def give_drink(drink)
#   return @drink_collection.delete(drink)
# end
# #have ot give cash to till amount

def gain_money(price)
 @till_amount += price
end

end
