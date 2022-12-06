Rails.application.routes.draw do
  resources :categories do
    resources :payments
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :home
  # Defines the root path route ("/")
  root "home#index"
end
