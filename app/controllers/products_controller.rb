class ProductsController < ApplicationController
  def index
    @products = Product.index(params[:page])
  end
end
