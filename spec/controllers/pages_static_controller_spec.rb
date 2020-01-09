require 'rails_helper'

RSpec.describe PagesStaticController, type: :controller do

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #terms_of_use" do
    it "returns http success" do
      get :terms_of_use
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #program_of_yumis" do
    it "returns http success" do
      get :program_of_yumis
      expect(response).to have_http_status(:success)
    end
  end

end
