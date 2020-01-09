require 'rails_helper'

RSpec.describe "Restaurant::MenuTypes", type: :request do
  describe "GET /restaurant/menu_types" do
    it "works! (now write some real specs)" do
      get restaurant_menu_types_path
      expect(response).to have_http_status(200)
    end
  end
end
