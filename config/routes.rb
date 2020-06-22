Rails.application.routes.draw do
  root to: "sessions#index"
  resource :sessions, only: [:index, :new, :create, :destroy]

  resource :secrets, only: [:show]
end
