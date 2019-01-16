require("minitest/autorun")
require("minitest/rg")

require_relative("../Drink")
require_relative("../Customer")
require_relative("../Pub")
require_relative("../Food")

class TestFood < MiniTest::Test

  def setup
    @pizza = Food.new("Peperoni", 5, 2)
    @chips = Food.new("chips n cheese", 3, 1)
    @burger = Food.new("Aberdeen Angus", 6, 3)
    @customer = Customer.new("Heather", 20, 21)
    @customer2 = Customer.new("James", 5, 16)
    @customer3 = Customer.new("Sponge Bob", 1, 18)
    @customer4 = Customer.new("Patrick", 18, 34)
  end



end
