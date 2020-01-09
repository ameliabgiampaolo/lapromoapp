require 'rails_helper'

RSpec.describe "restaurant/promos/show", type: :view do
  before(:each) do
    @restaurant_promo = assign(:restaurant_promo, Promo.create!(
      :yumis => false,
      :promo_type => "Promo Type",
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Promo Type/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
