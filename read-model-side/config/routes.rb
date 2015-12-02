Rails.application.routes.draw do
  resources :orders, only: [:index, :show, :new]
  root 'orders#index'
end
