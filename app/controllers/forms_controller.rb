class FormsController < BaseCrudController
  def create
    new_crud_instance = crud_model.create()
    
    create_params['question_ids'].each do |question_id|
      new_form_question = FormQuestion.create!(form_id: new_crud_instance.id, question_id: question_id)
    end
    
    if new_crud_instance.errors.present?
      render json: new_crud_instance.errors.messages, status: 422
    else
      render json: new_crud_instance.to_json(methods: :questions), status: 200
    end
  end
  
  def crud_model
    Form
  end

end
