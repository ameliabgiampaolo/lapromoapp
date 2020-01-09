require 'rails_helper'

RSpec.describe "restaurants/index", type: :view do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create!(
        :rif => "Rif",
        :name => "Name",
        :address => "Address",
        :zip_code => 2,
        :description => "MyText"
      ),
      Restaurant.create!(
        :rif => "Rif",
        :name => "Name",
        :address => "Address",
        :zip_code => 2,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    assert_select "tr>td", :text => "Rif".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
