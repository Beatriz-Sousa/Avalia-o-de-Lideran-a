class UsersController < BaseCrudController

  def crud_model
    User
  end

   def form_answers
    user_id = params[:id]
    user = User.find_by(id:user_id)

    if user.present?
      render json: user.form_answers
    end
  end

  def all_result
    users = User.includes(:form_answer, :form) 
    results = []
  
    users.each do |user|
      if user.form_answer.present? 
        form_answer = user.form_answer
  
        results << {
          name: user.name,
          email: user.email,
          result: form_answer.result,
          form_version: form_answer.form.version
        }
      end
    end
  
    render json: results
  end
  

  # permitir nome e released_at
  def create_params
    params.permit([:name, :email, :password])
  end

end
