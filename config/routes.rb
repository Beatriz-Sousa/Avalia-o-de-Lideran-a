Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #mount_devise_token_auth_for 'User', at: 'auth'
  

  resources :questions

  resources :forms

  resources :users

  resources :question_users

  resources :form_answers

  resources :form_questions

  #get '/user', to: 'users#show'
  get '/form_answers/:id/show', controller: :form_answers, action: :show

  post '/form_answers/:id/answer', controller: :form_answer, action: :answer

  post '/forms/:id/answer', controller: :forms, action: :answer

  

  #post 'answer/:form_id', controller: :forms, action: :answer
end