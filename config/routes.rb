Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check


  # get "articles", to: "articles#index"
  # get "articles/new", to: "articles#new"
  # get "articles/:id/edit", to: "articles#edit", as: :edit
  # post "articles", to: "articles#create"
  # patch "articles/:id", to: "articles#update"
  # get "articles/:id", to: "articles#show", as: :article
  # delete "articles/:id", to: "articles#destroy", as: :delete

  resources :articles
  # Defines the root path route ("/")
  # root "posts#index"
end
