Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pages
  # Defines the root path route ("/")
  # root "articles#index"
  resources :chairs do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]
end