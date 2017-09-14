class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:account_update)
		devise_parameter_sanitizer.permit(:sign_up)
	end

  protect_from_forgery with: :exception

  # Página inicial
  add_breadcrumb "Início", :root_path
end
