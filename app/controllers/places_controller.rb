class PlacesController < ApplicationController

    skip_before_action :restaurant_without_data
    skip_before_action :redirect_restaurant

    def get_states
        @estados = Place.where(type_place: 'estado')
        render :json => @estados
    end
    def get_municipios
        estado_id = params[:estado]
        @municipios = Place.where(place_id: estado_id)
        render :json => @municipios
    end
    def get_parroquias
        municipio_id = params[:municipio]
        @parroquias = Place.where(place_id: municipio_id)
        render :json => @parroquias
    end

end
