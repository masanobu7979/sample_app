Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end

#ページ名 	URL 	名前付きルート
#Home 	  / 	      root_path
#About  	/about 	  about_path
#Help 	  /help 	  help_path
#Contact 	/contact 	contact_path
#Sign up 	/signup 	signup_path
#Log in 	/login 	  login_path