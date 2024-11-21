<<<<<<<<< Temporary merge branch 1
class FormAnswersController < BaseCrudController
  def create
    last_form = Form.last
    new_crud_instance = crud_model.create(form_id: last_form.id)
    
    if new_crud_instance.errors.present?
      render json: new_crud_instance.errors.messages, status: 422
    else
      render json: new_crud_instance, status: 200
    end
  end

  def show
    form_answer_id = params[:id]
    form_answer = FormAnswer.find_by(id: form_answer_id)

    if form_answer.present?
      render json: form_answer.form.questions, status: :ok
    end
  end

  def answer
    form_answer = FormAnswer.find_by(id: params[:id])
    
    if form_answer.answered
      return render json: { error: 'Você já respondeu a este formulário' }, status: :unprocessable_entity
    end

    answers_data = params['answers']
    answers_data.each do |answer_data|
      # DEPOIS DE COLOCAR AUTENTICACAO, PASSAR O USUARIO AUTENTICADO NA CRIACAO DO QUESTION USER
      QuestionUser.create!(user_id: 1, question_id: answer_data[:question_id], answer: answer_data[:answer], 
      form_answer_id: form_answer.id, form_id: form_answer.form.id)
    end

    form_answer.calculate_result

  end

  def result
    form_answer_id = params[:id]
    form_answer = FormAnswer.find_by(id: form_answer_id)

    if form_answer.present?
     render json: form_answer.result_display, status: :ok
    else
    end
  end

  def crud_model
    FormAnswer
  end
end
