require ("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")

class TestPub < MiniTest::Test

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

def test_get_pub_name
  assert_equal("World's End", @pub.pub_name)
end

def test_get_till_amount
  assert_equal(100, @pub.till_amount)
end

def test_get_drink_collection
  assert_equal([@drink, @drink2], @pub.drink_collection)
end

def test_can_buy
  assert_equal(true, @pub.can_buy(@customer))
  assert_equal(false, @pub.can_buy(@customer2))
end


#
# def test_give_drink__vodka
#   @pub.give_drink(@drink)
#   assert_equal([@drink2], @pub.drink_collection)
# end



end
