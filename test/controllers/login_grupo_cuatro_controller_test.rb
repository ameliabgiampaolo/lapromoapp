require 'test_helper'
class SessionsControllerTest < ActionController::TestCase
include Devise::Test::IntegrationHelpers

    def setup
      @controller = Api::V1::SessionsController.new
    end

    test "Status code error cuando los datos son validos" do
      sign_in :grupoCuatroOne
      assert_response(200)
    end


end
