Rails.application.routes.draw do

  get "/products/search/:search_term/", to: 'products#search'
  resources :consumers
  resources :products
  resources :vendors



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
