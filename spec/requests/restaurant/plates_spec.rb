require 'rails_helper'

RSpec.describe "Restaurant::Plates", type: :request do
  describe "GET /restaurant/plates" do
    it "works! (now write some real specs)" do
      get restaurant_plates_path
      expect(response).to have_http_status(200)
    end
  end
end
