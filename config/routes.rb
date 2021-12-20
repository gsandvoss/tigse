Rails.application.routes.draw do
  resources :pins
  devise_for :users
  root 'home#index'
  get  'home/about'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


