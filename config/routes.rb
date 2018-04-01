Rails.application.routes.draw do
  devise_for :users
  get :dashboard, to: 'dashboard/dashboard#index'
  namespace :dashboard do
    resources :university
    resources :admin
    resources :students
    resources :reports
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard/dashboard#index"
end
