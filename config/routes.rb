Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "show", to: "secrets#show"
  get "destory", to: "sessions#destroy"
  resources :sessions
end
