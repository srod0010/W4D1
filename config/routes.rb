Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users

    # resources :users, except: [:new, :edit] do 
    #
    #   resources:user
    # end

    get "/users", to: "users#index", as: 'user_id'
    post "/users", to: "users#create"
    get "/users/new", to: "users#new", as: 'new_user'
    get "/users/:id/edit", to: "users#create"
    get "/users/:id", to: "users#show"
    patch "/users/:id", to: "users#update"
    delete "/users/:id", to: "users#destroy"


end
