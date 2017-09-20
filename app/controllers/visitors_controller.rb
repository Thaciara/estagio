class VisitorsController < ApplicationController

  def index
    @produtos = Product.where(idprincipal:true, active:true)
    @clientes = Client.all
    # @produtos.each_slice(3).to_a
  end

end
