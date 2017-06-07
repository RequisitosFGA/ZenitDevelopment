Rails.application.routes.draw do
  resources :services
  resources :projects
  resources :customers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
  root to: "devise/sessions#new"
  end
end
