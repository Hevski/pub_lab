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
    @drinks.delete(drink)
    @till += drink.price
    customer.buys_drink(drink)
  end

  def serve_customer(age)
     if age >= 18
       sold_drink()
       buys_drink()
     end



  end






end
