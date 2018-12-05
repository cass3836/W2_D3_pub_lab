require ("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")

class TestCustomer < MiniTest::Test

def setup
@customer = Customer.new("Cassia", 50)
end

def test_get_customer_name
  assert_equal("Cassia", @customer.customer_name)
end

def test_get_customer_wallet
  assert_equal(50, @customer.customer_wallet)
end

end
