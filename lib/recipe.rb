class Recipe
  attr_reader :name
  attr_accessor :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end



end
