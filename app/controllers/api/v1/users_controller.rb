class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index 
        users = User.all 
        render json: users
    end 
    
    
    def create 
        user = User.new(user_params)
        if user.valid? 
            user.save
            token = encode_token(user_id: user.id)
            render json: { user: user, jwt: token }, status: :created 
        else 
            render json: {error: 'Either that email is taken or you did not fill in a name or password'}
        end
    end 


    private 

    def user_params 
        params.require(:user).permit(:name, :email, :password)
    end


end
