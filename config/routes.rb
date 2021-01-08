Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 get '/desserts', to: 'desserts#index'
 get '/desserts/:id', to: 'desserts#show'
 
 get '/favorites', to: 'favorites#index'
 post '/favorites', to: 'favorites#create'
 delete '/favorites/:id', to: 'favorites#destroy'
#  patch '/desserts/:id', to: 'desserts#updateLikes'
 post '/desserts', to: 'desserts#create' 
 patch '/desserts/:id', to: 'desserts#update'
#  delete '/desserts/:id', to: 'desserts#destroy'
end

