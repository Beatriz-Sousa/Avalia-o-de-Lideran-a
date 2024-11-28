Rails.application.routes.draw do
  resources :questions

  resources :forms

  resources :users do
    member do
      get :form_answer
      get :all_result
    end
  end

  resources :question_users

  resources :form_answers do
    collection do
      get :all_result
    end
    member do 
      post :answer
      get :download_pdf
    end
  end

  resources :form_questions

end