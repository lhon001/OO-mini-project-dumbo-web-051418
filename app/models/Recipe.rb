class Recipe
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def users
    result = []
    User.all.each do |user|
      user.recipes.each do |recipe|
        if recipe == self
          result << user
        end
      end
    end
    result
  end

  def recipe_ingredient
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end

  def ingredients
    self.recipe_ingredient.map do |ri|
      ri.ingredient
    end
  end

  def allergens
    #should return all of the ingredients in
    #this recipe that are allergens
    Allergen.all.select do |allergen|
      self.ingredients.include?(allergen.ingredient)
    end
  end

  def add_ingredients(ingredients)
    ingredients.map do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end
end
