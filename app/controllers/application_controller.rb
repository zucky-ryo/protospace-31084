class ApplicationController < ActionController::Base
  before_action :permitted_parameters, if: :devise_controller?

  private
  def permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end

end
