class RecipesController < ApplicationController
  before_action :load_recipes, only: :index
  before_action :set_recipe, only: :show

  def index
    @recipes = Recipe.all
  end

  def show; end

  private

  def load_recipes
    Recipe.load_recipes
  end

  def set_recipe
    @recipe = Recipe.load(params['id'])
  end
end