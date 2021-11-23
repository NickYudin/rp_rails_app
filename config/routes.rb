Rails.application.routes.draw do

	root 'pages#home'
	resources :battles, :battlers, :rounds
	get 'signup', to: 'users#new'
	resources :users, except: [:new]
	post 'users', to: 'users#create'
end
