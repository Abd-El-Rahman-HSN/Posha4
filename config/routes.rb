Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :individuals
  resources :nationals
  resources :domestics
  resources :continentals
  resources :national_careers
  resources :performances
  resources :articles
  resources :searches
  resources :players
  devise_for :users
	devise_scope :user do
  	get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'
  get 'home/home'
  get '/FAQ' => 'home#faq'
  get '/Contact-Us' => 'home#contactus'
  get '/About-Us' => 'home#aboutus'
  get '/Promo-Video' => 'home#promovideo'
end

