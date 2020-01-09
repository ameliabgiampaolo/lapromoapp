require 'rails_helper'

RSpec.describe "restaurant/menu_types/index", type: :view do
  before(:each) do
    assign(:menu_types, [
      MenuType.create!(
        :name => "Name",
        :restaurant => nil
      ),
      MenuType.create!(
        :name => "Name",
        :restaurant => nil
      )
    ])
  end

  it "renders a list of restaurant/menu_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
