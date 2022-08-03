Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "landing#index"

  get '/login', to: "users#login"
  get 'users/update', to: 'users#update'
  get '/auth/:provider/callback', to: 'users#new'
  get 'users/pets/new', to: 'pets#new'
  get '/pets', to: 'pets#index'
  delete '/logout', to: 'sessions#destroy'
  get 'users/edit', to: 'users#edit'
  get 'pets/create', to: 'pets#create'
  get 'pets/:id', to: 'pets#show'
  get '/users/dashboard', to: 'users#show'

  # get '/auth/:provider/callback', to: 'sessions#omniauth'
end
