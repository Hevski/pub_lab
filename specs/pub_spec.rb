require("minitest/autorun")
require("minitest/rg")

require_relative("../Drink")
require_relative("../Customer")
require_relative("../Pub")

class TestPub < MiniTest::Test

  def setup
    @beer = Drink.new("Punk IPA", 3)
    @wine = Drink.new("Malbec", 4)
    @cocktail = Drink.new("Margarita", 5)
    @pub = Pub.new("James's Joint",50, [@beer, @wine, @cocktail])
    @customer = Customer.new("Heather", 20, 21)
  end

  def test_pub_has_name
    assert_equal("James's Joint", @pub.name)
  end

  def test_pub_has_drinks
    assert_equal(3, @pub.number_of_drinks)
  end

  def test_monies_in_till
    assert_equal(50, @pub.till)
  end

  def test_pub_sells_drink_to_customer
    @pub.sold_drink(@beer, @customer)
    assert_equal(2, @pub.number_of_drinks)
  end

  def test_till_gets_money_from_customer
    @pub.sold_drink(@wine, @customer)
    assert_equal(54, @pub.till)
    assert_equal(2, @pub.number_of_drinks)
    assert_equal(16, @customer.wallet)
  end



  def test_serve_customer_if_old_enough_to_drink
    @customer.serve_customer()
    assert_equal(21, @customer.age)
  end



end
