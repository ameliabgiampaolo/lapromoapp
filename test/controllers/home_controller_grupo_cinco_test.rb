require 'test_helper'

class HomeControllerGrupoCincoTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  def setup
    RestaurantKitchen.destroy_all
    Comment.destroy_all
    Reservation.destroy_all
    Promo.destroy_all
    PromoPlate.destroy_all
    MenuType.destroy_all
    Restaurant.destroy_all
    @controller=HomeController.new
  end
  
  #test para ver si hay reservaciones
  test "flash warning, busca si existen reservaciones" do
    get :index
    assert_equal 'No hay reservaciones registradas en ningun restaurant', flash[:warning]
  end  

end