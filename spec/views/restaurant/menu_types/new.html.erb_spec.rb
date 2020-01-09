require 'rails_helper'

RSpec.describe "restaurant/menu_types/new", type: :view do
  before(:each) do
    assign(:restaurant_menu_type, MenuType.new(
      :name => "MyString",
      :restaurant => nil
    ))
  end

  it "renders new restaurant_menu_type form" do
    render

    assert_select "form[action=?][method=?]", restaurant_menu_types_path, "post" do

      assert_select "input[name=?]", "restaurant_menu_type[name]"

      assert_select "input[name=?]", "restaurant_menu_type[restaurant_id]"
    end
  end
end
