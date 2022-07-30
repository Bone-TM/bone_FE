Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "landing#index"

  get '/login', to: "users#login"
  get '/register', to: 'users#new'
  get 'users/update', to: 'users#update'
  get '/users/dashboard', to: 'users#show'

  get 'users/pets/new', to: 'pets#new'
  get 'pets/:id', to: 'pets#show'

  get '/auth/:provider/callback', to: 'sessions#omniauth'
end
