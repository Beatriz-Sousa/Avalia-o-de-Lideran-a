class UsersController < BaseCrudController

  def crud_model
    User
  end

  def create_params
    params.permit([:name, :email])
  end

  # def show
  #   user = User.find(params[:id])
  #   render json: user, status: :ok
  # end
end
