class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_user!, unless: :devise_controller?
  # before_action :_authenticate_token

  # def _authenticate_token
  #   auth_token = params['auth_token']
  #   if auth_token != '12345678'
  #     render json: {}, status:401
  #   end
  # end
end