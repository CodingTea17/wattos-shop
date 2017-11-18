require 'rails_helper'

describe 'adding a review' do
  it 'will add a review to a product' do
    product = Product.create(:name => 'Venator', :cost => '3200000', :origin => 'Coruscant')
    visit product_path(product)
    click_on 'Add a review'
    fill_in 'Content', :with => 'All wings report in. Red Ten standing by. Red Seven standing by. Red Three standing by. Red Six standing by. Red Nine standing by. Red Two standing by. Red Eleven standing by. Red Five standing by.'
    fill_in 'Author', :with => 'Mace Windu'
    click_on 'Create Review'
    expect(page).to have_content 'reviews'
  end

  it 'will give an error when a form field is left blank' do
    product = Product.create(:name => 'Venator', :cost => '3200000', :origin => 'Coruscant')
    visit product_path(product)
    click_on 'Add a review'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
