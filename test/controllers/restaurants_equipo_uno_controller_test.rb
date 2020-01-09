require 'test_helper'
class RestaurantsGrupoUnoControllerTest < ActionController::TestCase 
    include Devise::Test::ControllerHelpers
    #include Warden::Test::Helpers
                       
    def setup
    #    puts "entro a setup"
    #   
       @controller = Administrador::RestaurantsController.new
    end

    test "index llamada exitosa" do
        #sign_in users(:user_001)
        get :index
        assert_response :success
    end
    
end