class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_user!, unless: :devise_controller?
  # before_action :_authenticate_token

  #função para autorização de acesso tipo adminitrador
  def _admin_authorized
    if not current_user.administrator #se não for administrador retornar erro 401
      render json: {}, status: 401
    end
  end
end