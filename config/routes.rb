Rails.application.routes.draw do
  resources :messages
  resources :comments
  resources :posts
  resources :favorites
  resources :activities
  resources :users
  
  get "/login", to: "users#login", as: "login"
  post "/handle_login", to: "users#handle_login"
  delete "/logout", to: "users#logout" 

  get "/users/:id/mailbox", to: "users#mailbox", as: 'mail'

end

