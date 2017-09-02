class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:account_update) << :name
		devise_parameter_sanitizer.for(:sign_up) << :name
	end

  protect_from_forgery with: :exception

  # Página inicial
  add_breadcrumb "Inicio", :root_path
end
