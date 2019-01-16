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
    @customer2 = Customer.new("James", 5, 16)
    @customer3 = Customer.new("Sponge Bob", 1, 18)
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

  def test_till_gets_money_from_customer__old_enough
    @pub.sold_drink(@wine, @customer)
    assert_equal(54, @pub.till)
    assert_equal(2, @pub.number_of_drinks)
    assert_equal(16, @customer.wallet)
  end

   def test_till_does_not_get_money_from_customer__not_old_enough
     @pub.sold_drink(@wine, @customer2)
     assert_equal(50, @pub.till)
     assert_equal(3, @pub.number_of_drinks)
     assert_equal(5, @customer2.wallet)
   end

   def test_till_does_not_money_from_customer__not_enough_money
     @pub.sold_drink(@wine, @customer3)
     assert_equal(50, @pub.till)
     assert_equal(3, @pub.number_of_drinks)
     assert_equal(1, @customer3.wallet)
   end



end
