class ProductController < ApplicationController
  def index
    @products = Products.all
  end
end
