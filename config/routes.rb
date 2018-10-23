Rails.application.routes.draw do
  root 'home#index'
  resources :tests
  resources :tsunamis
  resources :recordeds
  resources :deadliests
  mount API::Root, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
