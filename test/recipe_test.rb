require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < Minitest::Test

  def setup
    @cheese = Ingredient.new("Cheese", "C", 100)
    @mac = Ingredient.new("Macaroni", "oz", 30)
    @mac_and_cheese = Recipe.new("Mac and Cheese")
  end

  def test_it_exists
    assert_instance_of Recipe, @mac_and_cheese
  end

  def test_variables
    assert_equal "Mac and Cheese", @mac_and_cheese.name
    assert_equal ([{}]), @mac_and_cheese.ingredients_required
  end

  def test_add_ingredient
  end

  def test_amount_required
  end

end
