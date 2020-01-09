require 'test_helper'
class KitchenTypeControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
    def setup
      @controller = Api::V1::KitchenTypeController.new
    end

    test "Consulta de tipo de cocinas" do
      get 'kitchen_type_list'
      assert_response(200)
    end


    test "Consulta de tipo de promos info" do
      get 'kitchen_type_list'
      resp = JSON.parse(response.body)
      assert_not_empty resp
    end


end
