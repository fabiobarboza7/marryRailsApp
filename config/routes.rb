Rails.application.routes.draw do

	resources :profiles do
		resources :likes
	end
	resources :posts do
		resources :likes
	end

  root 'pages#home'

  devise_for :users, controllers: { 
  	registrations: "users/registrations", 
  	sessions: "users/sessions" 
  }
  
end
