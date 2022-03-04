Rails.application.routes.draw do
  get 'home/index'
  
  devise_for :users
  mount RailsAdmin::Engine => '/command_center/super_admin', as: 'rails_admin'

  authenticated :user do
    get '/admin', to: 'admin#index', as: 'root_admin'
    get '/member', to: 'member#index', as: 'root_member'
  end
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
