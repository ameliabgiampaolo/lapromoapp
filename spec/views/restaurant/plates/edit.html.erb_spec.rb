require 'rails_helper'

RSpec.describe "restaurant/plates/edit", type: :view do
  before(:each) do
    @restaurant_plate = assign(:restaurant_plate, Plate.create!(
      :name => "MyString",
      :description => "MyText",
      :price => 1.5,
      :menu_type => nil
    ))
  end

  it "renders the edit restaurant_plate form" do
    render

    assert_select "form[action=?][method=?]", restaurant_plate_path(@restaurant_plate), "post" do

      assert_select "input[name=?]", "restaurant_plate[name]"

      assert_select "textarea[name=?]", "restaurant_plate[description]"

      assert_select "input[name=?]", "restaurant_plate[price]"

      assert_select "input[name=?]", "restaurant_plate[menu_type_id]"
    end
  end
end
