Rails.application.routes.draw do
  resources :cashes
  resources :purchases
  resources :sales
  resources :bicycles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end