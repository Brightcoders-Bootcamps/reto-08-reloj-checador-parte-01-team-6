Rails.application.routes.draw do
  devise_for :users
  root to: "admin/dashboard#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :company_branches
    resources :employees
  end
end
