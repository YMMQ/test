Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :jobs
  resources :professions
  resources :addvs
  resources :institutes
  resources :organizations
  resources :cities
  resources :provinces
  resources :degrees
  resources :dtypes
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
