
class CookBook

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    ingredients_sorted = recipe.ingredients_required.to_h.sort_by do |k,v|
      v * k.calories
    end.reverse
    ingredient_array = ingredients_sorted.map do |ingredient, amount|
      {:ingredient => ingredient.name, :amount => "#{amount} #{ingredient.unit}"}
    end
    @recipes << {:name => recipe.name, :details => {:ingredients => ingredient_array}, :total_calories => recipe.total_calories}
  end

  def summary
    @recipes
  end

end
