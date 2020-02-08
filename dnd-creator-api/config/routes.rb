Rails.application.routes.draw do
  resources :class_joins, only: [:index, :show]
  resources :race_joins, only: [:index, :show]
  resources :abilities, only: [:index, :show]
  resources :char_classes, only: [:index, :show]
  resources :races, only: [:index, :show]
  resources :characters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
