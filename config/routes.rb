Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :schedules
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "schedules#index"
end
