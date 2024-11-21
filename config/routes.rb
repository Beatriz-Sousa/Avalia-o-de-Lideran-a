Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #mount_devise_token_auth_for 'User', at: 'auth'
  
 
  resources :questions

  resources :forms

  # /users/:id/form_answers
  resources :users do
    member do
      get :form_answers
    end
  end

  resources :question_users

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

  get '/form_answers/:id/result', controller: :form_answers, action: :result


  

  #post 'answer/:form_id', controller: :forms, action: :answer
end