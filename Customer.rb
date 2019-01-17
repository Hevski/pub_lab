class Customer

  attr_accessor :name, :wallet, :age, :drunkness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkness = 0
  end

  def buys_drink(drink)
    @wallet -= drink.price
    level_of_drunkness(drink)
  end

  def level_of_drunkness(drink)
    @drunkness += drink.alcohol_level
  end

  def buys_food(food)
    @wallet -= food.price
  end


end
