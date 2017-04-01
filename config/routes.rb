Rails.application.routes.draw do
  
  resources :posts
  devise_for :users
  get 'pages/about'

  get 'pages/contact'

  resources :sites do
  	resources :orders
  end

  root 'sites#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
