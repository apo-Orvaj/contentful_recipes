require 'rails_helper'

RSpec.describe Recipe do
  describe 'recipe' do
    it 'should be initialized with minimum attributes' do
      recipe = Recipe.new('1', 'Mac n Cheese', '')

      expect(recipe.title).to eq('Mac n Cheese')
    end

    it 'should be initialized with all attributes' do
      recipe = Recipe.new('1', 'Mac n Cheese', '', "Macaroni and cheese—also called mac 'n' cheese in the US, macaroni cheese in the United Kingdom—is a dish of cooked macaroni pasta and a cheese sauce, most commonly cheddar.", 'Chef AJ', ['cheese', 'macaroni'])

      expect(recipe.chef.class).to eq(Chef)
    end

    it 'returns all recipe objects' do
      count = Recipe.all.count
      recipe = Recipe.new('1', 'Mac n Cheese', '')

      expect(Recipe.all.count).to eq(count + 1)
    end

    it 'returns loads all recipes' do
      recipes = Recipe.load_recipes

      expect(recipes.count).to be > 0
    end

    it 'returns details of the recipe given' do
      recipes = Recipe.load_recipes
      recipe = Recipe.load(recipes.first.id)

      expect(recipe.title).not_to be_empty
    end 
  end
end
