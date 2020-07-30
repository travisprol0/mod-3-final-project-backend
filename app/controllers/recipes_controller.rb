class RecipesController < ApplicationController
    def index
        recipes = Recipe.all
        render json: recipes, include: [:items, :advanced_item]
    end
end
