class ApplicationController < ActionController::Base
  before_action :permit_parameters, if: :devise_controller?
  
  protected
  
  def permit_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
