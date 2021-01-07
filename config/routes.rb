Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 get '/desserts', to: 'desserts#index'
 get '/favorites', to: 'favorites#index'
 post '/favorites', to: 'favorites#create'
 get '/desserts/:id', to: 'desserts#show'
 
 patch '/desserts/:id', to: 'desserts#update'

 delete '/favorites/:id', to: 'favorites#destroy'
 delete 'desserts/:id', to: 'desserts#destroy'

end

