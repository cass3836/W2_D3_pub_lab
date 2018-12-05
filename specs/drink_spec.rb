require ("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test
  def setup
    @customer = Customer.new("Cassia", 50, 19, 0)
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
end

def test_get_drink
 assert_equal("vodka", @drink.info[:drink_name])
end

def test_get_price
assert_equal(2, @drink.info[:price])
end

def test_get_alcohol_content
  assert_equal(1, @drink2.info[:alcohol_content])
end

end
