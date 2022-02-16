Rails.application.routes.draw do
  #devise_scope :user do
  # root to: 'users/registrations#new'
  #end

  devise_for :users, controllers: {
    registrations: 'users/registrations',  
    sessions: 'users/sessions'
  }
    devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end

  resources :users
  

  end



