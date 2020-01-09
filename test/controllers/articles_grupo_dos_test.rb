require 'test_helper'

class ArticlesGrupoDosControllerTest < ActionController::TestCase
include Devise::Test::ControllerHelpers
	def setup
		@controller = ArticlesController.new
	end
	#-------------Index----------------------#
   test "Mensaje de éxito" do
 	   get :index, params: {topic_id: 1}
      assert_equal "Se han encontrado preguntas frecuentes",flash[:warning]
   end

   test "Responder de manera exitosa" do
      get :index, params: {topic_id: 1}
      assert_response :success   #redirige a la pagina de articulos
   end

   test "Validar que existe la instancia de articulos" do
      get :index, params: {topic_id: 1}
      assert_not_nil assigns(:articles), "ERROR. No existe la instancia indicada"
   end

   test "Validar que existe la instancia de temas" do
      get :index, params: {topic_id: 1}
      assert_not_nil assigns(:topics), "ERROR. No existe la instancia indicada"
   end

   test "Validar vista index de articulos" do
      get :index, params: {topic_id: 1}
      assert_template
   end

#-----------Contenido---------------------------̣#
   test "Mensaje de exito del contenido" do
      get :contenido, params: {id: 1}
      assert_equal "Se encontro la pregunta frecuente",flash[:warning]
   end

   test "Validar respuesta exitosa" do
      get :contenido, params: {id: 1}
      assert_response :success  
   end

     test "Validar que existe el articulo buscado" do
      get :contenido, params: {id: 1}
      assert_not_nil assigns(:articles), "ERROR. No existe la instancia indicada"
   end
#----------------Busqueda---------------------------#
  test "Mensaje de error de la busqueda" do
      get :busqueda, params: {title: 'test'}
      assert_equal "La busqueda no devolvio resultados",flash[:warning]
   end

  test "Mensaje de exito de la busqueda" do
      get :busqueda, params: {title: 'lorem'}
      assert_equal "Se encontraron resultados",flash[:warning]
   end

   test "Validar vista de error de busqueda" do
      get :busqueda, params: {title:'test'}
      assert_template :empty
   end

end
