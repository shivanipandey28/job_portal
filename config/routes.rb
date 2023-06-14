  Rails.application.routes.draw do
    devise_for :users
  resources :clients 
  resources :jobs
 #root "jobs#index"
root "clients#index"
end
