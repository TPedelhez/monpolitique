class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_filter :update_sanitized_params, if: :devise_controller?

def update_sanitized_params
  devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :password, :age, :job)}
end

end
