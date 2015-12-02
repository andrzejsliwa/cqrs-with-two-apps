Rails.application.routes.draw do
  resources :orders, only: [:create] do
    member do
      post 'add_item'
      post 'remove_item'
    end
  end
end
