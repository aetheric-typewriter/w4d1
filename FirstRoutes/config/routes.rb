Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  # get "/user", to: "user#index", as: "user_index"
  # post "/user/:id", to: "user#create"
  # get "/user/:id", to: "user#new", as: "new_user"
  # get "/user/:id", to: "user#edit", as: "edit_user"
  # get "/user/:id", to: "user#show", as: "user"
  # patch "/user/:id", to: "user#update"
  # put "/user/:id", to: "user#update"
  # delete "/user/:id", to: "user#destroy"
end
