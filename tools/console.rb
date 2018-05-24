require_relative '../config/environment.rb'

user_1 = User.new("Bob")
user_2 = User.new("Val")
user_3 = User.new("Jack")

recipe_1 = Recipe.new("Apple Pie")
recipe_2 = Recipe.new("Pancakes")
recipe_3 = Recipe.new("Waffles")

recipe_card_1 = RecipeCard.new(user_1, recipe_1, "1111", 5)
recipe_card_2 = RecipeCard.new(user_2, recipe_2, "2222",10)
recipe_card_3 = RecipeCard.new(user_2, recipe_3, "2222",8)
recipe_card_3 = RecipeCard.new(user_2, recipe_1, "2222",7)
recipe_card_3 = RecipeCard.new(user_2, recipe_1, "2222",9)

ing1 = Ingredient.new("peanuts")
ing2 = Ingredient.new("flour")
ing3 = Ingredient.new("oil")
ing4 = Ingredient.new("eggs")

ing_5 = Ingredient.new("apples")
ing_6 = Ingredient.new("sugar")
ing_7 = Ingredient.new("cinnamon")

ri_1 = RecipeIngredient.new(recipe_1, ing1)
ri_2 = RecipeIngredient.new(recipe_1, ing2)
ri_3 = RecipeIngredient.new(recipe_1, ing3)
ri_4 = RecipeIngredient.new(recipe_2, ing4)

allergen1 = Allergen.new(user_1, ing1)
allergen2 = Allergen.new(user_2, ing4)
allergen3 = Allergen.new(user_3, ing4)
allergen4 = Allergen.new(user_1, ing2)





#binding.pry

Pry.start
