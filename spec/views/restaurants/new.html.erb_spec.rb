require 'rails_helper'

RSpec.describe "restaurants/new", type: :view do
  before(:each) do
    assign(:restaurant, Restaurant.new(
      :rif => "MyString",
      :name => "MyString",
      :address => "MyString",
      :zip_code => 1,
      :description => "MyText"
    ))
  end

  it "renders new restaurant form" do
    render

    assert_select "form[action=?][method=?]", _restaurants_path, "post" do

      assert_select "input[name=?]", "restaurant[rif]"

      assert_select "input[name=?]", "restaurant[name]"

      assert_select "input[name=?]", "restaurant[address]"

      assert_select "input[name=?]", "restaurant[zip_code]"

      assert_select "textarea[name=?]", "restaurant[description]"
    end
  end
end
