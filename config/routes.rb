Rails.application.routes.draw do

	root 'pages#index'
	get 'pages/index'
	resources :battles, :battlers, :rounds
	get 'signup', to: 'users#new'
	resources :users, :except => [:new]
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy' 
end
