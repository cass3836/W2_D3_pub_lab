require ("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test
def setup
@drink = Drink.new("vodka", 2)
end

def test_get_drink
 assert_equal("vodka", @drink.drink_name)
end

def test_get_price
assert_equal(2, @drink.drink_price)
end

end
