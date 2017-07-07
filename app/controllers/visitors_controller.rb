class VisitorsController < ApplicationController

  def index
    @clientes = Cliente.all
  end

end
