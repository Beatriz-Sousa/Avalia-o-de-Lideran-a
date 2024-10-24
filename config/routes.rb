Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #mount_devise_token_auth_for 'User', at: 'auth'
  
 
  resources :questions

  resources :forms

  resources :users

  #get '/user', to: 'users#show'


  #post 'answer/:form_id', controller: :forms, action: :answer
end