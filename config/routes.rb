Feedcharlotte::Application.routes.draw do

  resources :changes
  resources :feeding_schedules
  resources :sleeping_schedules do
    collection do
      post :end_sleep
    end
  end

  root :to => "home#index"
end
