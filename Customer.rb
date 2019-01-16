class Customer

  attr_accessor :name, :wallet, :age, :drunkness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkness = 0
  end

  def has_money
    @wallet
  end

  def buys_drink(drink)
    @wallet -= drink.price
  end

  def level_of_drunkness(drink)
    @drunkness += drink.alcohol_level
  end


end
