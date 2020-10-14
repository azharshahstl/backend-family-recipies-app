Rails.application.routes.draw do
   namespace :api do 
    namespace :v1 do 
      resources :users do
      resources :recipes
      end
      post '/login', to: 'auth#create' 
    end 
  end
end
