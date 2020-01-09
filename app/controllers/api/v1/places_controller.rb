class Api::V1::PlacesController < ApplicationController

#Devuelve lista de lugares 
  def place_list
    @place = Place.list_of_places()
     if @place.empty?
       render :json => {:error => "No existen lugares"}.to_json, :status => 404
     else
       render json: @place
    end
  end
end
