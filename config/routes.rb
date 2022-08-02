Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "landing#index"

  get '/login', to: "users#login"
  get 'users/update', to: 'users#update'
  get '/users/dashboard', to: 'users#show'
  get '/auth/:provider/callback', to: 'users#new'
  get 'users/pets/new', to: 'pets#new'
  get '/pets', to: 'pets#index'
  get 'pets/:id', to: 'pets#show'
  delete '/logout', to: 'sessions#destroy'
  get 'users/edit', to: 'users#edit'

  # get '/auth/:provider/callback', to: 'sessions#omniauth'
end
