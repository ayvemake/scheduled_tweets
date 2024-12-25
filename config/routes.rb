Rails.application.routes.draw do
  get "/about-us", to: "about#index", as: :about
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "main#index"
  get "/sign-up", to: "registrations#new"
  post "/sign-up", to: "registrations#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  
  delete "/logout", to: "sessions#destroy"
  
end
