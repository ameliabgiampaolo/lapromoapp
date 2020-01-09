class HomeController < ApplicationController
  before_action :set_redirect
  def index
   
  	@places = Place.restaurantes.order(:name).page(params[:page]).per_page(6)
    #@places = Place.where(type_place: 'estado').page(params[:page]).per_page(6)
	if @places.empty? 
		flash[:warning2] = "Actualmente no existen proveedores de servicio registrados"
		render :empty
	elsif ((@places.count == 1) and (@places.pluck('id')[0] ==  25))
		redirect_to muestra_path(place_id: @places[0].id)
	end

	#Para la muestra de los restaurantes con mas reservas, limitado a 8 restaurantes
   	#@restaurants = Restaurant.all #esta linea se uso para probar la conexion entre controlador y base de datos
    @restaurants = Restaurant.mas_reservados.limit(9)
    if @restaurants.empty?
        flash.now[:warning] = "No hay reservaciones registradas en ningun restaurant"
        #render :empty_search
    end

  #Se utiliza para traer al index todos los tipos de cocinas guardados en la BD
    #asegurandose de que no se repita el nombre de los tipos de comida
    @kitchens = KitchenType.select(:name).distinct.order(:name).all
    if @kitchens.empty? 
      flash.now[:warning] = "No se han registrado tipos de cocina en la aplicacion"
      #render :empty_search
    end
    
  end
    

  def empty

  end

  def contact
  end

  def terms_of_use
  end

  def program_of_yumis
  end

  def empty_search

  end
  def set_redirect
    if user_signed_in? && current_user.is_admin?
      redirect_to administrador_home_path
    elsif user_signed_in? && current_user.is_restaurant?
      redirect_to restaurante_home_path
    end	
  end
  
  

end
