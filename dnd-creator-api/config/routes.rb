Rails.application.routes.draw do
  resources :class_joins, only: [:index, :show]
  # resources :race_joins, only: [:index, :show]
  resources :abilities, only: [:index, :show]
  resources :char_classes, only: [:index, :show]
  resources :races, only: [:index, :show]
  resources :characters, only: [:index, :show, :create, :update, :destroy] do
    resources :race_joins, only: [:create, :update, :destroy]
    resources :class_joins, only: [:create, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
