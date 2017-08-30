class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Página inicial
  add_breadcrumb "Inicio", :root_path
end
