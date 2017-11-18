require 'rails_helper'

describe "editing a product" do
  it "edits a product" do
    product = Product.create(:name => 'Venator', :cost => '3200000', :origin => 'Coruscant')
    visit products_path()
    click_on 'Edit'
    fill_in 'Name', :with => 'Pod Racer'
    click_on 'Update Product'
    visit product_path(product)
    expect(page).to have_content 'Pod Racer'
  end

  it "gives error when no description is entered" do
    product = Product.create(:name => 'Venator', :cost => '3200000', :origin => 'Coruscant')
    visit products_path()
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end
