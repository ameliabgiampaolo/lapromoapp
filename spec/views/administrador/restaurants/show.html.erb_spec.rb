require 'rails_helper'

RSpec.describe "administrador/restaurants/show", type: :view do
  before(:each) do
    @administrador_restaurant = assign(:administrador_restaurant, Restaurant.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
