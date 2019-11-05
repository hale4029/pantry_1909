class Recipe
  attr_reader :name
  attr_accessor :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(instance_name, amount)
    ingredients_required[instance_name] = amount
  end

  def amount_required(instance_name)
    @ingredients_required[instance_name]
  end

  def total_calories
    @ingredients_required.sum do |ingredient, amount|
      amount_required(ingredient) * ingredient.calories
    end
  end

end
