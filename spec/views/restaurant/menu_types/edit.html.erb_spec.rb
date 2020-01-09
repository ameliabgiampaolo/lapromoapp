require 'rails_helper'

RSpec.describe "restaurant/menu_types/edit", type: :view do
  before(:each) do
    @restaurant_menu_type = assign(:restaurant_menu_type, MenuType.create!(
      :name => "MyString",
      :restaurant => nil
    ))
  end

  it "renders the edit restaurant_menu_type form" do
    render

    assert_select "form[action=?][method=?]", restaurant_menu_type_path(@restaurant_menu_type), "post" do

      assert_select "input[name=?]", "restaurant_menu_type[name]"

      assert_select "input[name=?]", "restaurant_menu_type[restaurant_id]"
    end
  end
end
