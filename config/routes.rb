Rails.application.routes.draw do
  resources :buildings do
    resources :apartments
  end
  namespace :building do
    resources :apartments
  end
  devise_for :users
    root to: 'buildings#index' 
    get '/users/sign_out' => 'devise/sessions#destroy'
end
