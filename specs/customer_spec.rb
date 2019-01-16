require("minitest/autorun")
require("minitest/rg")

require_relative("../Drink")
require_relative("../Customer")

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customer.new("Heather", 20, 21)
    @customer2 = Customer.new("James", 5, 16)
    @customer3 = Customer.new("Sponge Bob", 1, 18)
    @wine = Drink.new("Malbec", 4, 2)
    @beer = Drink.new("Punk IPA", 3, 2)
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

  def test_drunkness_level_of_customer
    @customer.level_of_drunkness(@wine)
    assert_equal(2, @customer.drunkness)
  end


end
