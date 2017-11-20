class ProductsController < ApplicationController
  def index
    @products = Product.index(params[:page])
    @products = @products.by_planet(params[:planet]) if params[:planet].present?
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
      flash[:success] = "Product successfully added!"
      redirect_to products_path
    else
      flash[:danger] = "IT'S A TRAP!!"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success] = "Update was success"
      redirect_to products_path
    else
      flash[:danger] = "IT'S A TRAP!!"
      render :edit
    end
  end


  def destroy
    Product.find(params[:id]).destroy
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end
end
