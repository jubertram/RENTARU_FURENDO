Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :partners do
    resources :appointments, only: %i[new create]
  end
  resources :appointments, only: %i[index destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
