require("minitest/autorun")
require("minitest/rg")

require_relative("../Drink")
require_relative("../Customer")

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customer.new("Heather", 20, 21)
    @wine = Drink.new("Malbec", 4)
    @beer = Drink.new("Punk IPA", 3)
  end

  def test_customer_has_name
    assert_equal("Heather", @customer.name)
  end

  def test_customer_has_money
    assert_equal(20, @customer.has_money)
  end

  def test_customer_buys_drink_money_reduces
    @customer.buys_drink(@wine)
    @customer.buys_drink(@beer)
    assert_equal(13, @customer.wallet )
  end


end
