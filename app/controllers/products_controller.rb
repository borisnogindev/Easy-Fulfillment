class ProductsController < AuthenticatedController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to products_path
      puts "all good"
    else
      puts "error"
      @products = Product.all
      render 'index'
    end
  end

  def destroy
  end

  private
  
  def product_params    
    params.require(:product).permit(:ebay_url)
  end

end
