class FormAnswersController < ApplicationController
end
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
    
    answers_data = params['answers']
    answers_data.each do |answer_data|
      QuestionUser.create!(user_id: 1, question_id: answer_data[:question_id], answer: answer_data[:answer], 
      form_answer_id: form_answer.id, form_id: form_answer.form.id)
    end

    form_answer.calculate_result
    render json: "Respostas enviadas!"
  end

   def result
    form_answer = FormAnswer.find_by(id: params[:id])

    if form_answer.present?
      result = form_answer.result.display
      render json: {result: result}, staus: :ok
    else
      render json: {error: "Respostas não foram enviadas ou processadas ainda."}, status: :unprocessable_entity
   end


  def crud_model
    FormAnswer
  end
end
