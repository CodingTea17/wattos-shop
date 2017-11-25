class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  
  validates :author, :product_id, :presence => true
  validates :rating, :inclusion => 1..5
  validates :content, length: {minimum: 50, maximum: 250}, allow_blank: false
end
