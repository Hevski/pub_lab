require("minitest/autorun")
require("minitest/rg")

require_relative("../Drink")

class TestDrink < MiniTest::Test

  def setup
    @drink = Drink.new("tequilla", 3)
  end


  def test_drink_has_name
    assert_equal("tequilla", @drink.name)
  end

end
