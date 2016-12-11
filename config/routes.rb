Rails.application.routes.draw do
  resources :projects
  devise_for :users
  resources :companies
  resources :workdays
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#index'
  get 'pages/index'
  get 'pages/imprint'
  get 'pages/about'
end
