require 'rails_helper'

RSpec.describe "restaurant/promos/edit", type: :view do
  before(:each) do
    @restaurant_promo = assign(:restaurant_promo, Promo.create!(
      :yumis => false,
      :promo_type => "MyString",
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit restaurant_promo form" do
    render

    assert_select "form[action=?][method=?]", restaurant_promo_path(@restaurant_promo), "post" do

      assert_select "input[name=?]", "restaurant_promo[yumis]"

      assert_select "input[name=?]", "restaurant_promo[promo_type]"

      assert_select "input[name=?]", "restaurant_promo[name]"

      assert_select "textarea[name=?]", "restaurant_promo[description]"
    end
  end
end
