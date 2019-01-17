require("minitest/autorun")
require("minitest/rg")

require_relative("../Drink")
require_relative("../Customer")
require_relative("../Food")

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customer.new("Heather", 20, 21)
    @customer2 = Customer.new("James", 5, 16)
    @customer3 = Customer.new("Sponge Bob", 1, 18)
    @wine = Drink.new("Malbec", 4, 2)
    @beer = Drink.new("Punk IPA", 3, 2)
    @pizza = Food.new("Peperoni", 5, 2)
    @chips = Food.new("chips n cheese", 3, 1)
    @burger = Food.new("Aberdeen Angus", 6, 3)
  end

  def test_customer_has_name
    assert_equal("Heather", @customer.name)
  end

  def test_customer_has_money
    assert_equal(20, @customer.wallet)
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

  def test_customer_buys_food_money_reduces
    @customer.buys_food(@pizza)
    assert_equal(15, @customer.wallet)
  end

  def test_customer_drunkness_reduces_when_eats
    @customer.drunkness_reduces(@pizza)
    assert_equal(-2, @customer.drunkness)
  end



end
