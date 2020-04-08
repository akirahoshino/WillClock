Rails.application.routes.draw do
  get 'tasks/index'
  get 'welcome/index'
  root "welcome#index"
  # get "" => ""
  
  # get 'goals/new' => 'goals#new'
  # post 'goals/create' => 'goals#create'
  
  # get 'goals/edit' => 'goals#edit' 
  
  # resources :goals
  resources :goals #, only: [:index, :new, :create, :edit, :update]
  resources :tasks #, only: [:index, :new, :create, :edit, :update]
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end



end
