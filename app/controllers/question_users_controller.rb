class QuestionUsersController < BaseCrudController  
    def create
      new_crud_instance = crud_model.create(create_params)
      
      if new_crud_instance.errors.present?
        render json: new_crud_instance.errors.messages, status: 422
      else
        render json: new_crud_instance, status: 200
      end
    end

    def crud_model
      QuestionUser
    end
  
    def create_params
      params.permit([:user_id, :form_id, :question_id, :answer, :form_answer_id])
    end
  end
