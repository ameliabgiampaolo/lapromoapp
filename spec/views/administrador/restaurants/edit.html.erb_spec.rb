require 'rails_helper'

RSpec.describe "administrador/restaurants/edit", type: :view do
  before(:each) do
    @administrador_restaurant = assign(:administrador_restaurant, Restaurant.create!())
  end

  it "renders the edit administrador_restaurant form" do
    render

    assert_select "form[action=?][method=?]", administrador_restaurant_path(@administrador_restaurant), "post" do
    end
  end
end
