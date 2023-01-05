Rails.application.routes.draw do
  get 'users/show'
  resources :rooms do
    resources :messages
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
  get 'user/:id', to: 'users#show', as: 'user'
end
