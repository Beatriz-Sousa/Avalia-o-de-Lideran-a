Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #mount_devise_token_auth_for 'User', at: 'auth'
  

  resources :questions

  resources :forms

  # /users/:id/form_answers
  resources :users do
    member do
      get :form_answer
    end
  end

<<<<<<<<< Temporary merge branch 1
  resources :question_users
=========
  resources :formanswers

  #get '/user', to: 'users#show'
>>>>>>>>> Temporary merge branch 2

  resources :form_answers do
    collection do
      get :all_result
    end
    member do 
      post :answer
    end
  end

  resources :form_questions

  #get '/user', to: 'users#show'
  get '/form_answers/:id/show', controller: :form_answers, action: :show


  post '/forms/:id/answer', controller: :forms, action: :answer

  

  #post 'answer/:form_id', controller: :forms, action: :answer
end