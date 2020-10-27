class Api::V1::RecipesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show, :update, :destroy]

    def index
        user = User.find(params[:user_id])
        recipes = user.recipes
        render json: recipes
    end 

    def show 
        recipe = Recipe.find(params[:id])
    end 

    def create
        # binding.pry
        user = User.find(params[:user_id])
        recipe = user.recipes.new(recipe_params)
        if recipe.save
            render json: recipe
        else 
            render json: {error: 'Not all fields were completed.'}
        end
    end 

    def update 
    end

    def destroy 
        recipe = Recipe.find(params[:id])
        recipe.destroy
        render json: recipe
    end 

    private 

    def recipe_params 
        params.require(:recipe).permit(:name, :ingredients, :directions, :cuisine, :user_id)
    end

end
