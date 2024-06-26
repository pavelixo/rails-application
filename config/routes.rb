Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Register
  get '/signup', to: 'users#new', as: 'register'
  post '/signup', to: 'users#create', as: 'register_post'

  # Login
  get '/signin', to: 'sessions#new', as: 'login'
  post '/signin', to: 'sessions#create', as: 'login_post'
  delete '/signout', to: 'sessions#destroy' # Logout

  # Posts
  get '/post/publish', to: 'posts#new', as: 'new_post'
  post '/post/publish', to: 'posts#create', as: 'create_post'
  get '/post/:id', to: 'posts#show', as: 'show_post'

  root 'pages#index'
end
