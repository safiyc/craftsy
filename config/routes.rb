Rails.application.routes.draw do
  devise_for :users
  resources :products do
    resources :reviews
  end

  resources :order_items
  resource :cart, only:[:show]

  root 'products#index'
end
