class UsersController < BaseCrudController

  def crud_model
    User
  end

  def create_params
    params.permit([:name, :email])
  end
end
