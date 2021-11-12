Rails.application.routes.draw do

root 'pages#home'
resources :battles, :battlers, :rounds

end
