class Api::V1::PromosController < ApplicationController


#Devuelve todas las promos para ser utilizadas en el filtro 
  def promo_type_list
    @type = Promo.all
     if @type.empty?
       render :json => {:error => "No existen promos disponibles"}.to_json, :status => 404
     else
       render json: @type
    end
  end
end
