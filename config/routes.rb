  Rails.application.routes.draw do
    devise_for :users
  resources :jobs do
    resources :clients
  end
  #root "jobs#index"
  root "clients#index"

end
