require 'rails_helper'

RSpec.describe "restaurant/plates/new", type: :view do
  before(:each) do
    assign(:restaurant_plate, Plate.new(
      :name => "MyString",
      :description => "MyText",
      :price => 1.5,
      :menu_type => nil
    ))
  end

  it "renders new restaurant_plate form" do
    render

    assert_select "form[action=?][method=?]", restaurant_plates_path, "post" do

      assert_select "input[name=?]", "restaurant_plate[name]"

      assert_select "textarea[name=?]", "restaurant_plate[description]"

      assert_select "input[name=?]", "restaurant_plate[price]"

      assert_select "input[name=?]", "restaurant_plate[menu_type_id]"
    end
  end
end
