Rails.application.routes.draw do
  resources :photographers
  resources :appointments, only: [:index, :create, :update, :destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
