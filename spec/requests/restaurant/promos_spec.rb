require 'rails_helper'

RSpec.describe "Restaurant::Promos", type: :request do
  describe "GET /restaurant/promos" do
    it "works! (now write some real specs)" do
      get restaurant_promos_path
      expect(response).to have_http_status(200)
    end
  end
end
