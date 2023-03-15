class ProductsController < AdminController
  before_action :require_admin, only: [:new, :create, :destroy]

  def index
    @products = Product.search(params[:search])
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :color, :company_name, :rating, :price, :search)
  end
end
