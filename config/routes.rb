Rails.application.routes.draw do
  get 'home/index'
  
  devise_for :users
  mount RailsAdmin::Engine => '/super_admin', as: 'rails_admin'
  
  root :to => "home#index"
end
