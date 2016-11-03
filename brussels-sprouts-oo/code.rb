#YOUR CODE GOES HERE
# Ingredient class
class Ingredient

  attr_accessor :quantity, :unit, :name

  def initialize quantity, unit, name
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    puts "#{@quantity.to_f} #{@unit} #{@name.capitalize}"
  end

end

#Recipe class
class Recipe

  attr_accessor :name, :instructions, :ingredients

  def initialize name, instructions, ingredients
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "Name: #{@name.capitalize}"
    puts "\nIngredients"
    @ingredients.each do |ingredient|
      puts "- #{ingredient.quantity.to_f} #{ingredient.unit} #{ingredient.name.capitalize}"
    end

    puts "\nInstructions"

    order = 0
    @instructions.each do |instruction|
      order +=1
      puts "#{order}. #{instruction}"
    end
  end

end

# ingredients and instructions
ingredients_test = [
  Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
  Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
  Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
  Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions_test = [
  "Preheat oven to 400 degrees F.",
  "Cut off the brown ends of the Brussels sprouts.",
  "Pull off any yellow outer leaves.",
  "Mix them in a bowl with the olive oil, salt and pepper.",
  "Pour them on a sheet pan and roast for 35 to 40 minutes.",
  "They should be until crisp on the outside and tender on the inside.",
  "Shake the pan from time to time to brown the sprouts evenly.",
  "Sprinkle with more kosher salt ( I like these salty like French fries).",
  "Serve and enjoy!"
]

recipe_test = Recipe.new("Roasted Brussel Sprouts", instructions_test, ingredients_test)

#Recipe summary
recipe_test.summary
