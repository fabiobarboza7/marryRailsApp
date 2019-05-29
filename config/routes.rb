Rails.application.routes.draw do
  resources :profiles, only: [:index, :new, :create, :update]
  root 'pages#home'

  devise_for :users, controllers: { 
  	registrations: "users/registrations", 
  	sessions: "users/sessions" 
  }
  
end
