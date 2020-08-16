Rails.application.routes.draw do
  devise_for :users
  root to: "employees#index"
  resources :company_branches
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
