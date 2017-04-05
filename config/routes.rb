Rails.application.routes.draw do

  devise_for :runners
  resources :workouts do
    member do
      patch :complete
    end
  end 
  root 'workouts#index'
end
