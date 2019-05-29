Rails.application.routes.draw do
  resource :profiles, only: [:new, :create, :update]
  root 'pages#home'
  devise_for :users, controllers: { registrations: "users/registrations" }

end
