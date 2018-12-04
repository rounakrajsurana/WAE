Rails.application.routes.draw do
  resources :quotations, defaults: { format: :json }
  devise_for :users, only: [:registrations, :sessions], defaults: { format: :json }, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  # root 'quotations#index'
end
`