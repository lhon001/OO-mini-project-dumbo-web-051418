class User
  attr_reader :name, :recipes
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    #return all users' recipe cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    #returns all this user's recipes
    self.recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    self.recipe_cards.sort_by do |recipe_card|
      recipe_card.rating
    end[-3..-1]
  end

  def most_recent_recipe
    RecipeCard.all.select do |recipe_card|
      recipe_card
    end
  end
end
