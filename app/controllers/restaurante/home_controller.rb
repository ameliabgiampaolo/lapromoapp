class Restaurante::HomeController < ApplicationController
  layout 'restaurante'
  before_action :authenticate_restaurant!
  def index; end
end
