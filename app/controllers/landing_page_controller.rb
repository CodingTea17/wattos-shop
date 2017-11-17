class LandingPageController < ApplicationController
  def home
    # Renders (by default) app/views/landing_page/home.html.erb
    @products = Product.recent
    @most_reviewed_product = Product.most_reviewed
  end
end
