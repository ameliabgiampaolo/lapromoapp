require 'rails_helper'

RSpec.describe "restaurant/plates/index", type: :view do
  before(:each) do
    assign(:plates, [
      Plate.create!(
        :name => "Name",
        :description => "MyText",
        :price => 2.5,
        :menu_type => nil
      ),
      Plate.create!(
        :name => "Name",
        :description => "MyText",
        :price => 2.5,
        :menu_type => nil
      )
    ])
  end

  it "renders a list of restaurant/plates" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
