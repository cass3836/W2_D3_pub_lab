# require("pry")
require ("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
# require_relative("../drink.rb")
# require_relative("../pub.rb")

class TestCustomer < MiniTest::Test
def setup
  @customer = Customer.new("Cassia", 50, 19, 10)
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
def test_get_customer_name
  assert_equal("Cassia", @customer.customer_name)
end

def test_get_customer_wallet
  assert_equal(50, @customer.customer_wallet)
end

def test_get_age
  assert_equal(19, @customer.age)
end

def test_buy_drink__money
  @customer.buy_drink(@drink, @pub)
  assert_equal(48, @customer.customer_wallet)
  assert_equal(102, @pub.till_amount)
end

def test_buy_drink__money_if_underage
  @customer2.buy_drink(@drink, @pub)
  assert_equal(60, @customer2.customer_wallet)
  assert_equal(100, @pub.till_amount)
end

def test_get_drunkenness__before_drink
  assert_equal(10, @customer.drunkenness)
  assert_equal(0, @customer2.drunkenness)
end

def test_alcohol_levels__after_drink
  @customer2.buy_drink(@drink, @pub)
  assert_equal(0, @customer2.drunkenness)
end


end
