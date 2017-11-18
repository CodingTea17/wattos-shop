require 'rails_helper'

describe 'filtering by planet of origin' do
  it 'will only show products that have Coruscant as an origin' do
    product1 = Product.create(:name => 'Venator', :cost => '3200000', :origin => 'Coruscant')
    product2 = Product.create(:name => 'AT-AT', :cost => '3400000', :origin => 'Hoth')
    visit '/products?planet=Coruscant'
    expect(page).to have_no_content 'AT-AT'
  end
end
