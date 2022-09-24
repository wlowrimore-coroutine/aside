Rails.application.routes.draw do
  resources :rooms
  root 'pages#home'
  devise_for :users
  devise_scope :user do
    #Redirects users signing out back to sign-in
    get "users", to: "devise/sessions#new"
  end
  get 'user/:id', to: 'users#show', as: 'user'
end
