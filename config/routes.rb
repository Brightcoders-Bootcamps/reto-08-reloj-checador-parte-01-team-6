Rails.application.routes.draw do
  devise_for :users
  root to: "work_checkups#new"

  resources :work_checkups, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    root to: "admin/dashboard#index"
    get 'dashboard', to: 'dashboard#index'
    resources :company_branches
    resources :employees
    get 'reports', to: 'reports#index'
  end
end
