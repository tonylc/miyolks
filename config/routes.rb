Feedcharlotte::Application.routes.draw do

  resources :changes, only: [:create, :delete, :show, :index]
  resources :feeding_schedules, only: [:create, :delete, :show, :index]
  resources :sleeping_schedules, only: [:create, :delete, :show, :index]

  root :to => "home#index"
end
