require ("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test
  def setup
    @customer = Customer.new("Cassia", 50, 19)
    @customer2 = Customer.new("James", 60, 17)

    @drink = Drink.new({
      drink_name: "vodka",
      price: 2
      })
    @drink2 = Drink.new({
      drink_name: "beer",
      price: 1
      })

    @pub = Pub.new("World's End", 100, [@drink, @drink2])
end

def test_get_drink
 assert_equal("vodka", @drink.info[:drink_name])
end

def test_get_price
assert_equal(2, @drink.info[:price])
end

end
