class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:success] = "Your review was successfully added!"
      redirect_to product_path(@review.product)
    else
      flash[:danger] = "IT'S A TRAP!!"
      render :new
    end
  end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
