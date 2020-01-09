require 'test_helper'

class HomeGrupoDosControllerTest < ActionController::TestCase
include Devise::Test::ControllerHelpers	
   def setup
      RestaurantKitchen.destroy_all
      Comment.destroy_all
      Reservation.destroy_all
      Promo.destroy_all
      PromoPlate.destroy_all
      MenuType.destroy_all
      Restaurant.destroy_all
		@controller = HomeController.new
	end
	
   test "Mensaje de error " do
 	   get :index
      assert_equal "Actualmente no existen proveedores de servicio registrados",flash[:warning2]
   end

   test "Responder de manera correcta" do
      get :index
      assert_response :success
   end

   test "Validar que existe la instancia" do
      get :index
      assert_not_nil assigns(:places), "ERROR. No existe la instancia indicada"
   end

   test "Validar pagina de error" do
      get :index
      assert_template :empty, "ERROR. No se ha conseguido la vista correcta"
   end
#---------------------Validar paginas estaticas --------------------#
   test "Validar pagina de yumis" do
      get :program_of_yumis 
      assert_template :program_of_yumis      
   end

   test "Validar pagina de contacto" do
      get :contact
      assert_template :contact
   end

   test "Validar pagina de terminos y condiciones" do
      get :terms_of_use
      assert_template :terms_of_use
   end


end
