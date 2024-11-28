class UsersController < BaseCrudController

  def crud_model
    User
  end

  def form_answer
    user_id = params[:id]
    user = User.find_by(id: user_id)
  
    if user.nil?
      render json: { error: 'User not found' }, status: 404
    elsif user.form_answer.nil?
      render json: { error: 'Form answer not found' }, status: 404
    else
      render json: user.form_answer.result_display
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

  def create_params
    params.permit([:name, :email, :password])
  end

end
