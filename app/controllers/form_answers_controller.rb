class FormAnswersController < ApplicationController

    def create_model
        FormAnswer
    end

    def create
      @form_answer = FormAnswer.new(form_answer_params)
  
      if @form_answer.save #teste
        @form_answer.update(result: @form_answer.result_final)
        redirect_to @form_answer, notice: 'Form answer was successfully created.'
      else
        render json: :new
      end
    end
end
