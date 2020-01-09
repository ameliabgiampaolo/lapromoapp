require 'rails_helper'

RSpec.describe "Administrador::Restaurants", type: :request do
  describe "GET /administrador/restaurants" do
    it "works! (now write some real specs)" do
      get administrador_restaurants_path
      expect(response).to have_http_status(200)
    end
  end
end
