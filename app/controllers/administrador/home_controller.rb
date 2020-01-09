class Administrador::HomeController < ApplicationController
  before_action :authenticate_admin!
  layout 'administrador'
  def index
    @restaurant = Restaurant.all
  end
end
