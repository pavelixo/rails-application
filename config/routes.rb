Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  root 'pages#index'
end
