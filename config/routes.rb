Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #mount_devise_token_auth_for 'User', at: 'auth'
  

  resources :questions

  resources :forms

  resources :users

  resources :form_answers

  resources :form_questions

  resources :forms

  #get '/user', to: 'users#show'


  #post 'answer/:form_id', controller: :forms, action: :answer
end