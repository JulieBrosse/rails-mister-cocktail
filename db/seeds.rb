require 'open-uri'
require "json"

toto = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
ingredients = JSON.parse(toto.read)

ingredients['drinks'].each do |drink|
  Ingredient.create!(name: drink['strIngredient1'])
end


puts 'Creating cocktails...'
cocktails_attributes = [
  {
    name:         'Mojito',
  },
  {
    name:         'Caipirina',
  }
]

Cocktail.create!(restaurants_attributes)
puts 'Finished!'
