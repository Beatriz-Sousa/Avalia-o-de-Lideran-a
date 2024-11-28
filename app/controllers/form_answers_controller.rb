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
      QuestionUser.create!(user_id: current_user, question_id: answer_data[:question_id], answer: answer_data[:answer], 
      form_answer_id: form_answer.id, form_id: form_answer.form.id)
    end

    form_answer.calculate_result
    return render json: { message: 'Respostas salvas!'}, status: :ok
  end

  def result
    form_answer = FormAnswer.find_by(id: params[:id])

    if form_answer.present?
      result = form_answer.result_display
      render json: {result: result}, staus: :ok
    else
      render json: {error: "Respostas não foram enviadas ou processadas ainda."}, status: :unprocessable_entity
   end
  end

   def all_result
    form_answers = FormAnswer.all
    results = []

    form_answers.each do |form_answer|
      if form_answer.user.present?
        results << {
          name: form_answer.user.name,
          email: form_answer.user.email,
          result: form_answer.result,
          form_version: form_answer.form.version
        }
      end
    end

    render json: results
   end

   def download_pdf
    form_answer = FormAnswer.find(params[:id])

    result = form_answer.calculate_result
    user = form_answer.user  

    result_info = form_answer.result_display
    result_text = result_info[:text]
    result_description = result_info[:description]

    pdf = Prawn::Document.new

    pdf.text "Relatório de Resultado de Formulário", size: 24, style: :bold
    pdf.move_down 20

    pdf.text "Nome do Usuário: #{user.name}", size: 16
    pdf.text "Email: #{user.email}", size: 16
    pdf.text "Data de Cadastro: #{user.created_at.strftime('%d/%m/%Y')}", size: 16
    pdf.move_down 20

    pdf.text "Resultado do Formulário:", size: 18, style: :bold
    pdf.text "Pontuação: #{result}", size: 16
    pdf.text "Descrição do Resultado: #{result_text}, ", size: 16
    pdf.text "Detalhes: #{result_description}", size: 14, style: :italic
    pdf.text "Data e hora da resposta: #{form_answer.created_at.strftime('%d/%m/%Y')}", size: 16
    pdf.move_down 20

    send_data pdf.render, 
              filename: "resultado_formulario_#{form_answer.id}.pdf", 
              type: "application/pdf", 
              disposition: "attachment"
  end

  def crud_model
    FormAnswer
  end
end