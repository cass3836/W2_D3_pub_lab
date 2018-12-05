require ("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")

class TestPub < MiniTest::Test

def setup
@pub = Pub.new("World's End", 100, ["vodka", "beer"])

end

def test_get_pub_name
  assert_equal("World's End", @pub.pub_name)
end

def test_get_till_amount
  assert_equal(100, @pub.till_amount)
end

def test_get_drink_collection
  assert_equal(["vodka", "beer"], @pub.drink_collection)
end

end
