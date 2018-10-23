Rails.application.routes.draw do
  get 'earthquakes/index'
  root 'earthquakes#index'
  resources :tests
  resources :statistics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
