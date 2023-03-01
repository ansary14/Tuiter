Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
  get 'user/:id', to: 'users#show', as: 'user'
end
