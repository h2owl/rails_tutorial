Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: "home#index"

  resources :todos do
    patch "toggle", on: :member
  end
end
