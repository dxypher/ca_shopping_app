Shopping::Application.routes.draw do
  resources :reviews

  root to: 'products#index'
  resources :brands
  resources :products
  resources :sessions
  
  get 'logout' =>'sessions#destroy', as: :logout
end
