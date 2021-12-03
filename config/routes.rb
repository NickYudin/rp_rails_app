Rails.application.routes.draw do

	root 'pages#index'
	get 'pages/index'
	resources :battles, :battlers, :rounds
	get 'signup', to: 'users#new'
	resources :users, :except => [:new]
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy' 
	resources :images 
	post 'images/:id/accept_image' => 'images#accept_image', as: 'accept_image'
	post 'images/:id/add_image' => 'images#add_image', as: 'add_image'
	post 'images/:id/rmv_image' => 'images#rmv_image', as: 'rmv_image' 
	resources :roles

end
