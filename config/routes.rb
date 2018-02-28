Rails.application.routes.draw do
  resources :products
  root 'products#index'
  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end
end
