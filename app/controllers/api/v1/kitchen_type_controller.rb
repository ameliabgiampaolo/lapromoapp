class Api::V1::KitchenTypeController < ApplicationController


#Devuelve los tipos de cocina
  def kitchen_type_list
    @type = KitchenType.all
     if @type.empty?
       render :json => {:error => "No existen tipos de cocina"}.to_json, :status => 404
     else
       render json: @type
    end
  end
end
