require 'rails_helper'

describe 'landing page' do
  it 'show the product with the most reviews' do
    product1 = Product.create(:name => 'Venator', :cost => '3200000', :origin => 'Coruscant')
    product2 = Product.create(:name => 'AT-AT', :cost => '3400000', :origin => 'Hoth')
    product3 = Product.create(:name => 'Death Star', :cost => '99000000', :origin => 'Endor')
    review1 = Review.create(:author => 'Red One', :content => 'All wings report in. Red Ten standing by. Red Seven standing by. Red Three standing by. Red Six standing by. Red Nine standing by. Red Two standing by. Red Eleven standing by. Red Five standing by.', :rating => 1, :product_id => product3.id)
    visit '/'
    expect(page).to have_content 'Death Star';
  end

  it 'show the 3 most recent products' do
    product1 = Product.create(:name => 'Venator', :cost => '3200000', :origin => 'Coruscant')
    product2 = Product.create(:name => 'AT-AT', :cost => '3400000', :origin => 'Hoth')
    product3 = Product.create(:name => 'Death Star', :cost => '99000000', :origin => 'Endor')
    product4 = Product.create(:name => 'X-Wing', :cost => '1200000', :origin => 'Yavin 4')
    review1 = Review.create(:author => 'Red One', :content => 'All wings report in. Red Ten standing by. Red Seven standing by. Red Three standing by. Red Six standing by. Red Nine standing by. Red Two standing by. Red Eleven standing by. Red Five standing by.', :rating => 1, :product_id => product3.id)
    visit '/'
    expect(page).to have_no_content product1.name;
  end
end
