require 'rails_helper'

RSpec.describe "restaurant/promos/new", type: :view do
  before(:each) do
    assign(:restaurant_promo, Promo.new(
      :yumis => false,
      :promo_type => "MyString",
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new restaurant_promo form" do
    render

    assert_select "form[action=?][method=?]", restaurant_promos_path, "post" do

      assert_select "input[name=?]", "restaurant_promo[yumis]"

      assert_select "input[name=?]", "restaurant_promo[promo_type]"

      assert_select "input[name=?]", "restaurant_promo[name]"

      assert_select "textarea[name=?]", "restaurant_promo[description]"
    end
  end
end
