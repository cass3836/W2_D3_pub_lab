require_relative("customer.rb")
require_relative("pub.rb")
require_relative("drink.rb")

@customer = Customer.new("Cassia", 50, 19, 9)
@customer2 = Customer.new("James", 60, 17, 0)

@drink = Drink.new({
  drink_name: "vodka",
  price: 2, alcohol_content: 5
  })
@drink2 = Drink.new({
  drink_name: "beer",
  price: 1, alcohol_content: 1
  })

@pub = Pub.new("World's End", 100, [@drink, @drink2])


p @customer2.buy_drink(@drink, @pub)

p @pub.sober_enough(@customer)

p @customer.buy_drink(@drink2, @pub)

p @customer.buy_drink(@drink2, @pub)

# p pub
#
# customer.buy_drink(drink, pub)


#
# p customer
# p pub
