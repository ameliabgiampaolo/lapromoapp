require 'test_helper'
class PromosControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
    def setup
      @controller = Api::V1::PromosController.new
    end

    test "Consulta de tipo de promos status code" do
      get 'promo_type_list'
      assert_response(200)
    end

    test "Consulta de tipo de promos info" do
      get 'promo_type_list'
      resp = JSON.parse(response.body)
      assert_not_empty resp
    end


end
