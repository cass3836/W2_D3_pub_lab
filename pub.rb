require("pry")

class Pub

attr_reader :pub_name, :till_amount, :drink_collection


def initialize(name, till, drinks)
  @pub_name = name
  @till_amount = till
  @drink_collection = drinks
end



end
