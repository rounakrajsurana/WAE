Rails.application.routes.draw do
  
  resources :requests do 
    resources :comments
  end
  devise_for :users
  post 'requests/create_comment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'requests#index'
end
