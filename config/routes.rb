Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root to: 'games#home'
  # Defines ask route
  get 'new', to: 'games#new'
  # Defines results route
  get 'score', to: 'games#score'
end
