Rails.application.routes.draw do
  
  
  # resources :categories
	root 'welcome#index'
  

  resources :blogs do
  	 resources :comnnts
  	end
  match 'auth/:provider/callback', to: 'sessionss#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessionss#destroy', as: 'signout', via: [:get, :post]
	# root 'welcome#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'welcome/index'
  # root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
