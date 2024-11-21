class QuestionsController < BaseCrudController
  
  def crud_model
    Question
  end

  # permitir nome e released_at
  def create_params
    params.permit([:title, :option_1, :option_2, :option_3, :option_4])
  end

<<<<<<<<< Temporary merge branch 1
 # def show
  #  render :json ([:title, :option_1, :option_2, :option_3, :option_4])
  #end
=========
  def sent
    params.permit([:title, :option_1, :option_2, :option_3, :option_4])
  end

>>>>>>>>> Temporary merge branch 2
end
