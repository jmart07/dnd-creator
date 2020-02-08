Rails.application.routes.draw do
  resources :abilities
  resources :char_classes
  resources :races
  resources :characters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
