class UsersController < BaseCrudController

  def crud_model
    User
  end

  def form_answer
    user_id = params[:id]
    user = User.find_by(id:user_id)

    if user.present?
      render json: user.form_answer
    end
    

  # permitir nome e released_at
  def create_params
    params.permit([:name, :email])
  end

end
