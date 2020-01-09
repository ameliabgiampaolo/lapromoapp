require 'rails_helper'

RSpec.describe "Comensal::Diners", type: :request do
  describe "GET /comensal/diners" do
    it "works! (now write some real specs)" do
      get comensal_diners_index_path
      expect(response).to have_http_status(200)
    end
  end
end
