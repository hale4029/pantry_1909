
class Pantry
  attr_accessor :stock

  def initialize
    @stock = {}
  end

  def restock(instance_name, amount)
    if @stock[instance_name]
      @stock[instance_name] += amount
    else
      @stock[instance_name] = amount
    end
  end

  def stock_check(instance_name)
    @stock[instance_name] == nil ? 0 : @stock[instance_name]
  end

  def enough_ingredients_for?(recipe_name)
    ingredients = recipe_name.ingredients_required.to_h
    ingredients.all? do |ingredient, amount|
      ingredients[ingredient] <= stock_check(ingredient)
    end
  end

end
