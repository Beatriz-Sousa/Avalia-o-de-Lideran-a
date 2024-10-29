class UsersController < BaseCrudController

  def crud_model
    User
  end

  # permitir nome e released_at
  def create_params
    params.permit([:name, :email])
  end
end
