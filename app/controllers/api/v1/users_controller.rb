class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show, :update]

    def index 
        users = User.all 
        render json: users
    end 

    def show 
        user = User.find(params[:id])
        render json: user
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

    def update 
        binding.pry
        user = User.find(params[:id])
        user.update(isLoggedIn: params["user"]["isLoggedIn"])
        user.save
        render json: user
    end


    private 

    def user_params 
        params.require(:user).permit(:name, :email, :password, :isLoggedIn)
    end


end
