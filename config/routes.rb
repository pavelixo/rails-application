Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Register
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  # Login
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy' # Logout

  root 'pages#index'
end
