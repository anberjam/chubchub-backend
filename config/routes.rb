Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 get '/desserts', to: 'desserts#index'
 get '/favorites', to: 'favorites#index'
 post '/favorites', to: 'favorites#create'

end

