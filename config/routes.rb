Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "baking_categories#index"

  resources :baking_categories, only: [:show, :create, :new, :edit, :update, :destroy]
  post "/recipes/search", to: "recipes#search"
  get "/recipes/search", to: "recipes#results", as: "recipes_results"
  resources :recipes, only: [:create, :new, :show]

  resources :directions, only: [:new]
  post "/directions/new", to: "directions#create"
  resources :ingredients, only: [:new]
  post "/ingredients/new", to: "ingredients#create"
  resources :reviews, only: [:create, :new, :destroy]

  resources :users, only: [:new, :create, :show]
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: "logout"
end
