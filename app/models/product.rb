class Product < ActiveRecord::Base
  validates :name, :cost, :origin , :presence => true
  has_many :reviews

  scope :index, -> (page) { order("name ASC").paginate(:page => page, :per_page => 10) }

  scope :recent, -> { order("created_at DESC").limit(3) }

  scope :most_reviewed, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1))
  }

  scope :by_planet, -> (planet) { where("origin like ?", "%#{planet}%")}
end
