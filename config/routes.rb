Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  get "/team" => "pages#team"
  get "/contact" => "pages#join_us"

resources :products # liste toutes les 7 routes classiques ci-dessous
resources :upvotes, only: [:create, :destroy ]

# # Read action routes
#   get "/products" => "products#index"
#   get "/products/:id" => "products#show"

# #Create action routes
#   get "/products/new"=>"products#new"
#   post "/products"=>"prodducts#create"

# #Update action routes
#   get "/products/:id/edit"=>"products#edit"
#   patch "/products/:id"=>"products#update"

# #Delete action routes
#   delete "products/:id"=>"products#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
