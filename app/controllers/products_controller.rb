class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]
  before_action :is_admin?, except: [:show]

  add_breadcrumb "Produtos", :products_path
  add_breadcrumb "<i class='fa fa-plus'></i> Novo".html_safe, :new_product_path, only: [:index, :new]

  # GET /products
  # GET /products.json
  def index
    # @products = Product.all unless params[:name_contains].present?
    # @products = []
    @products = Product.filter(params.slice(:name_contains))
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new(idprincipal:true, active:true)
  end

  # GET /products/1/edit
  def edit
    add_breadcrumb "Detalhes", @product
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Produto criado com sucesso.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Produto atualizado com sucesso' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Produto excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :image, :active, :idprincipal)
    end

    def filtering_params(params)
      params.slice(:name)
    end

    def is_admin?
      redirect_to root_path, alert: "Você não tem permissão para executar o recurso solicitado!" unless current_user.try(:admin?)
    end
end
