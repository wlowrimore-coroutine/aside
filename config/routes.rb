Rails.application.routes.draw do
  resources :rooms
  root 'pages#home'
  get 'user/:id', to: 'users#show', as: 'user'
  devise_scope :user do
    #Redirects users signing out back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users
end
