require_relative("customer.rb")
require_relative("pub.rb")
require_relative("drink.rb")

customer = Customer.new("Cassia", 50, 19)
customer2 = Customer.new("James", 60, 17)

drink = Drink.new({
  drink_name: "vodka",
  price: 2
  })
drink2 = Drink.new({
  drink_name: "beer",
  price: 1
  })

pub = Pub.new("World's End", 100, [drink, drink2])

p pub.can_buy(customer2)

# p pub
#
# customer.buy_drink(drink, pub)


#
# p customer
# p pub
