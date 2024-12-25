Rails.application.routes.draw do
  get "/about-us", to: "about#index", as: :about
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "main#index"
end
