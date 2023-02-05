Rails.application.routes.draw do
  devise_for :users
  resources :friends
  resources :outreaches
  #get 'home/index'
  #root 'home#index'
  get 'home/about'
  root 'friends#index'
  get 'outreaches/edit'
    
  devise_scope :user do                                                                 
      get '/users/sign_out' => 'devise/sessions#destroy'  
      
      get '/users/sign_up' => 'devise/registrations#new'
  end
    
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
