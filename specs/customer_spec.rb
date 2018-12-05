# require("pry")
# require ("minitest/autorun")
# require("minitest/rg")
# require_relative("../customer.rb")
# require_relative("../drink.rb")
# require_relative("../pub.rb")

class TestCustomer < MiniTest::Test
def setup
@customer = Customer.new("Cassia", 50)
@drink = Drink.new("vodka", 2)
@pub = Pub.new("World's End", 100, ["vodka", "beer"])
end
def test_get_customer_name
  assert_equal("Cassia", @customer.customer_name)
end

def test_get_customer_wallet
  assert_equal(50, @customer.customer_wallet)
end

def test_buy_drink
  @customer.buy_drink(@drink, @pub)
  assert_equal(48, @customer.customer_wallet)
  assert_equal(102, @pub.till_amount)
end

end
