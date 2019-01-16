class Pub

  attr_accessor :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def number_of_drinks
    @drinks.length
  end

  def sold_drink(drink, customer)
    if customer.age >= 18 && customer.wallet >= drink.price
    @drinks.delete(drink)
    @till += drink.price
    customer.buys_drink(drink)
  end
end



  end
