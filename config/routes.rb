Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :jobs
  root 'jobs#index'
  post 'checkout', to: 'jobs#checkout'
end
