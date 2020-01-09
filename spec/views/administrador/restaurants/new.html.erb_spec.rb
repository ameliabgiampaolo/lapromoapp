require 'rails_helper'

RSpec.describe "administrador/restaurants/new", type: :view do
  before(:each) do
    assign(:administrador_restaurant, Restaurant.new())
  end

  it "renders new administrador_restaurant form" do
    render

    assert_select "form[action=?][method=?]", administrador_restaurants_path, "post" do
    end
  end
end
