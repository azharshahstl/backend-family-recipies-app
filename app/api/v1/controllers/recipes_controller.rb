class Api::V1::RecipesController < ApplicationController

    def index 
    end 

    def show 
    end 

    def new 
    end 

    def update 
    end

    def destroy 
    end 

    private 

    def recipe_params 
        params.require(:recipe).permit(:ingredients, :directions, :cuisine, :user_id)
    end

end
