Rails.application.routes.draw do
  get "/about-us", to: "about#index", as: :about
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "main#index"
  get "/sign-up", to: "registrations#new"
  post "/sign-up", to: "registrations#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create" 


  delete "/logout", to: "sessions#destroy"
  
end
