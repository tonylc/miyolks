Feedcharlotte::Application.routes.draw do

  resources :changings, only: [:create, :delete, :show, :index]
  resources :feedings, only: [:create, :delete, :show, :index]
  resources :sleepings, only: [:create, :delete, :show, :index]

  root :to => "home#index"
end
