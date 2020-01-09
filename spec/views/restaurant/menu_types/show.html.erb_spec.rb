require 'rails_helper'

RSpec.describe "restaurant/menu_types/show", type: :view do
  before(:each) do
    @restaurant_menu_type = assign(:restaurant_menu_type, MenuType.create!(
      :name => "Name",
      :restaurant => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
