Rails.application.routes.draw do
  get 'earthquakes/index'
  root 'earthquakes#index'
  resources :tests
  resources :tsunamis
  resources :recordeds
  resources :deadliests
  resources :statistics
  mount API::Root, at: '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
