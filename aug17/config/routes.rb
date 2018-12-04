Rails.application.routes.draw do
  resources :course_registrations
  resources :course_offerings
  resources :courses
  devise_for :users

  root "courses#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
