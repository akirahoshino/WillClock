Rails.application.routes.draw do
  # resources :goals do
  #   resources :tasks
  # end
  resources :goals do
    resources :tasks
  end
  #resources :tasks, only: [:show, :edit, :update, :destroy]
  
  root "welcome#index"
  get 'welcome/index'
  # get 'tasks/index'
  # get "" => ""
  
  # get 'goals/new' => 'goals#new'
  # post 'goals/create' => 'goals#create'
  
  # get 'goals/edit' => 'goals#edit' 
  
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
