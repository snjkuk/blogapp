Rails.application.routes.draw do
  
  
	root 'welcome#index'

  resources :blogs do
  	 resources :comnnts
  	end
  
	root 'welcome#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'welcome/index'
  # root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end