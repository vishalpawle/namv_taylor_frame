class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role]) # For regular sign-up
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:role]) # For accepting invitation
  end
  def authenticate_inviter!
    authenticate_admin!(force: true)
  end
end
