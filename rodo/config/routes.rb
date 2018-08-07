Rodo::Application.routes.draw do
  
  root "public#index"
  resources :searches
  get 'admin', :to => "dostep#index"
  match ':controller(/:action(/:id))', :via => [:get, :post]
end