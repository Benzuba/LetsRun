Rails.application.routes.draw do

  devise_for :runners
  resources :workouts
  root 'workouts#index'
end
