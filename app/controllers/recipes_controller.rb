class RecipesController < ApplicationController
  def index
  	@search_recipe = params[:search] || 'chocolate'
  	@recipes = Recipe.for(@search_recipe)
  end
end

