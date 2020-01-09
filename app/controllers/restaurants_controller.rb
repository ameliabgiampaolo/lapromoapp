class RestaurantsController < ApplicationController
    def buscar_x_estado
        #Para la muestra de restaurantes por estado
        #recibe el id de un estado
        #luego revisa todos los municios asociados a ese estado
        #luego revisa todos las parroquias asociadas a a los municipios de ese estado
        #para devolver una lista de restaurantes que se encuentren asociados a esas esas parroquias
        #@restaurants = Restaurant.all #esta linea se uso para probar la conexion entre controlador y base de datos
        @restaurants = Restaurant.where(place_id: Place.where(place_id: Place.where(place_id: Place.where(id: (params[:place_id]))))).order(:name).group("restaurants.id").page(params[:page]).per_page(8)
        if @restaurants.empty?
            flash.now[:warning] = "No hay restaurantes registrados en ese estado"
            render :empty_search
        end
    end
    layout 'application'
    #INFO DEL RESTAURANT
    def restaurant_info 
        @restaurantID = params[:restaurantID]
        #trae los menus del restaurant
        @menu = MenuType.find_by_sql("select menu_types.id, menu_types.name, plates.name as plate_name, plates.price, plates.description
            from menu_types, restaurants, plates
            where restaurants.id =#{@restaurantID} and restaurants.id = menu_types.restaurant_id and plates.menu_type_id = menu_types.id
            group by menu_types.id,  menu_types.name, plates.name, plates.price, plates.description")
        #obtiene los datos del restaurant
        @restaurant_info = Restaurant.find_by_sql("select id, name, address, map_location, zip_code, capacity, description, 
                                                extract(HOUR from start_time) as hora_ap, extract(HOUR from end_time) as hora_cerr 
                                                from restaurants where restaurants.id =#{@restaurantID}")
        #obtiene los datos del promedio de todas las opiniones de ese restaurant
        @opinion_summarized = Comment.find_by_sql("select r.id as Restaurant,cast(avg(c.kitchen_rating) as decimal (10,1)) as cocina,cast(avg(c.service_rating) as decimal (10,1)) as servicio,cast(avg(c.ambient_rating) as decimal (10,1)) as ambiente, 
                                                cast(avg(c.kitchen_rating + c.service_rating + c.ambient_rating)/3 as decimal (10,1)) as calificacion, count(c.id) as total_votos
                                                from restaurants r,diners p, comments c,reservations res
                                                where res.restaurant_id=r.id and res.diner_id=p.id and c.reservation_id=res.id and r.id=#{@restaurantID}
                                                group by Restaurant")
            
        if @restaurant_info.empty?
            flash.now[:error] = 'Este restaurante no existe, por favor vuelva a la página de inicio'
        end
        
        if @opinion_summarized.empty? 
            flash.now[:error_o]= 'No hay calificaciones aún para este restaurant'
        end
        
        if @menu.empty? 
            flash.now[:warning] = 'Este restaurante aun no posee un menú'
        end
        
    end
    
    def index
        
        @restaurants = Restaurant.where(place_id: Place.where(place_id: Place.where(place_id: Place.where(id: (params[:place_id])).pluck('id')).pluck('id')).pluck('id'))        
    end
	#def index
	#@restaurants = Restaurant.where(place_id: Place.where(place_id: Place.where(place_id: Place.where(id: (params[:place_id])).pluck('id')).pluck('id')).pluck('id'))

    def buscar_x_tipo_comida 
    	#Para la muestra de restaurantes por su tipo de comida asociado
        #recibe un texto para el tipo de comida
        #luego revisa las asociaciones de restaurantes con los tipos de comidas guardados
        #para devolver una lista de restaurantes cuyo tipo de comida es el indicado
        #@restaurantsT = Restaurant.all #esta linea se uso para probar la conexion entre controlador y base de datos
        @restaurants = Restaurant.where(id: RestaurantKitchen.where("id in (select restaurant_id from restaurant_kitchens where kitchen_type_id in (select id from kitchen_types where name like ? ))", params[:name] )).order(:name).group("restaurants.id").page(params[:page]).per_page(8)
    	if @restaurants.empty?
            flash.now[:warning] = "No hay restaurantes registrados con ese tipo de comida"
            render :empty_search
        end
    end

    #def buscar_x_mas_reservado
        ##Para la muestra de los restaurantes con mas reservas
        ##Primero cuenta la cantidad de restaurant_id repetidos en la tabla reservation y los guarda como total_reservas,
        ##y los compara con el restaurant.id de la tabla restaurant
        ##finalmente los agrupa por restaurant.id y los ordena descendentemente por medio del total_reservas
        ##@restaurants = Restaurant.all #esta linea se uso para probar la conexion entre controlador y base de datos
        #@restaurants = Restaurant.select("restaurants.*, COUNT(reservations.restaurant_id) total_reservas").joins(:reservations).group("restaurants.id").order("total_reservas DESC").page(params[:page]).per_page(8)
        #if @restaurants.empty?
            #flash.now[:warning] = "No hay reservaciones registradas en ningun restaurant"
        #end
    #end
end
