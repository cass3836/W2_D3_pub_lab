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

def can_buy(customer)
 if customer.age >= 18
   return true
 else
   return false
 end
end

def sober_enough(customer)
   if customer.drunkenness >=10
    return false
  else
    true
  end
end


end
