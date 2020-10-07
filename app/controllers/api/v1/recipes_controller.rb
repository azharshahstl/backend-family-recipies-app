class Api::V1::RecipesController < ApplicationController

    def index
        recipes = Recipe.all 
        render json: recipes
    end 

    def show 
        recipe = Recipe.find_by(id: params[:id])
    end 

    def create
        # binding.pry
        user = User.find_by(user_id: params[:user_id])
        recipe = user.recipes.(recipe_params)
        if recipe.save
            render json: recipe
        else 
            render json: {error: 'Not all fields were completed.'}
        end
    end 

    def update 
    end

    def destroy 
        recipe = Recipe.find_by(id: params[:id])
        recipe.destroy
    end 

    private 

    def recipe_params 
        params.require(:recipe).permit(:ingredients, :directions, :cuisine, :user_id)
    end

end
