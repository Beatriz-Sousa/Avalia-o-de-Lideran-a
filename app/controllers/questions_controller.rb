class QuestionsController < BaseCrudController
  before_action :_admin_authorized, only: [:create, :update, :destroy] #está dizendo que o create precisa ser admin.
  
  def crud_model
    Question
  end

  def create
    new_crud_instance = crud_model.create(create_params)

    if new_crud_instance.errors.present?
      # Retorna erros se algum campo obrigatório não for preenchido
      render json: new_crud_instance.errors.messages, status: 422
    else
      render json: new_crud_instance, status: 200
    end
  end

  # permitir nome e released_at
  def create_params
    params.permit([:title, :option_1, :option_2, :option_3, :option_4])
  end

 
end
