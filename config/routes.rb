Rails.application.routes.draw do
  resources :tsunamis
  resources :deadly_quakes
  resources :earthquake_data
  resources :tsunamis
  resources :earthquake_data
  resources :deadly_quakes
  get 'earthquakes/index'
  root 'earthquakes#index'
  resources :tests
  resources :statistics
  #resources :chart1
  get "/chart1" => "chart1#index", :as => :chart1
  resources :chart2
  resources :chart3
  mount API::Root, at: '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
