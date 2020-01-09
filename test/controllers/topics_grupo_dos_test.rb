require 'test_helper'

class TopicsGrupoDosControllerTest < ActionController::TestCase
include Devise::Test::ControllerHelpers

	def setup
      Article.destroy_all
		@controller = TopicsController.new
	end
	
   test "Mensaje de error" do
 	   get :index
      assert_equal "Actualmente no existen preguntas frecuentes registradas",flash[:warning]
   end

   test "Comprobar respuesta obtenida" do
      get :index
      assert_response :success  #redirige a la pagina de articulos
   end

   test "Validar que existe la instancia de temas" do
      get :index
      assert_not_nil assigns(:topics), "ERROR. No existe la instancia indicada"
   end

    test "Verificar vista de error" do
       get :index
       assert_template :empty, "ERROR. No se ha encontrado la vista"
    end


end
