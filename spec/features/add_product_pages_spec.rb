require 'rails_helper'

describe 'the add a product process' do
  it 'adds a new product' do
    visit products_path
    click_link 'Add a New Product'
    fill_in 'Name', :with => 'Venator'
    fill_in 'Cost', :with => '3200000'
    fill_in 'Origin', :with => 'Coruscant'
    click_on 'Create Product'
    expect(page).to have_content 'Current Inventory';
  end

  it 'gives an error when a form field is left blank' do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
