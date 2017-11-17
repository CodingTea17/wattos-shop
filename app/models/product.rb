class Product < ActiveRecord::Base
  validates :name, :cost, :origin , :presence => true

   scope :index, -> (page) { order("name ASC").paginate(:page => page, :per_page => 10) }
end
