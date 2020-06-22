Rails.application.routes.draw do
  get "/", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
  get "/hello", to: "application#hello"
  get "/secret", to: "secrets#show"
end
