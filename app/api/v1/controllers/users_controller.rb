class Api::V1::UsersController < ApplicationController

    def create 
    end 


    private 

    def user_params 
        params.require(:user).permit(:name, :email, :password)
    end


end
