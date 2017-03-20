Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "baking_categories#index"

  resources :baking_categories, only: [:show, :create, :new, :edit, :update, :destroy]
  resources :recipes, only: [:create, :new, :edit, :show, :update, :destroy]
  resources :ingredients, only: [:show, :new, :destroy, :create]
  resources :food_items, only: [:show, :new, :destroy, :create]
  resources :reviews, only: [:create, :new, :edit, :show, :update, :destroy]

  resources :users, only: [:new, :create, :show]
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: "logout"
end
