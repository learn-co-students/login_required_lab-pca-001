Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "sessions#index"
  resource :sessions, only: [:index, :new, :create, :destroy]

  resource :secrets, only: [:show]
end
