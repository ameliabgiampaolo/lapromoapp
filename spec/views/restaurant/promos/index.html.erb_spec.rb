require 'rails_helper'

RSpec.describe "restaurant/promos/index", type: :view do
  before(:each) do
    assign(:promos, [
      Promo.create!(
        :yumis => false,
        :promo_type => "Promo Type",
        :name => "Name",
        :description => "MyText"
      ),
      Promo.create!(
        :yumis => false,
        :promo_type => "Promo Type",
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of restaurant/promos" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Promo Type".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
