class Api::V1::RestaurantsController < ApplicationController


    #METODOS DEL GRUPO 4


    #Lista restaurantes por estado
    def restaurant_list
      @restaurant = Restaurant.restaurant_of_place(params[:id])
       if @restaurant.empty?
         render :json => {:error => "No existen restaurantes configurados para ese pais"}.to_json, :status => 404
     else
      render json: @restaurant
      end
    end

    #Metodo que se encarga de filtrar los restaurantes
    def restaurant_search
      @restaurant = dinamic_filter_restaurant(params[:id],params[:kt],params[:pt],params[:ym],params[:dt])
       if @restaurant.empty?
         render :json => {:error => 'No hay resultados, intente con otro filtro'}.to_json, :status => 404
     else
      render json: @restaurant
      end
    end

    #FIltro nombre
    def restaurant_name
      @restaurant = Restaurant.restaurant_filter_name(params[:q])
       if @restaurant.empty?
         failure_filter
       else
         render json: @restaurant
      end
    end

    #Filtro direccion
    def restaurant_address
      @restaurant = Restaurant.restaurant_filter_address(params[:q])
       if @restaurant.empty?
         failure_filter
       else
         render json: @restaurant
      end
    end

    #Devuelve tipos de cocina
    def restaurant_kitchen_type
      @restaurant = Restaurant.restaurant_filter_kitchentype(params[:q])
       if @restaurant.empty?
         failure_filter
       else
         render json: @restaurant
      end
    end

    #Respuesta generica cuando no encuentra restaurant con los filtros utilizados
    def failure_filter
      render :json => {:error => "No se encontraron restaurantes"}.to_json, :status => 404
    end

    #Metodo que se encarga de filtrar dinamicamente la informacion segun el filtro pasado
    def dinamic_filter_restaurant(id,kt,pt,ym,dt)

          @restaurant = Restaurant.restaurant_of_place(params[:id])
            query_filter =''

          unless kt.nil?
             query_filter += ' AND restaurant_kitchens.kitchen_type_id = '+ kt
          end

          unless pt.nil?
            query_filter += ' AND promos.promo_type = \'' + pt +'\''
            #@restaurant = @restaurant.filter_by_promo(params[:id])
          end

          unless ym.nil?
            query_filter += ' AND promos.yumis = true'
            #@restaurant = @restaurant.filter_by_promo(params[:id])
          end

          unless dt.nil?
            query_filter += ' AND calendars.final_date = \'' + dt +'\''
            #@restaurant = @restaurant.filter_by_promo(params[:id])
          end

        @available_rest = Restaurant.filter_generic(query_filter)
        array = @available_rest.map { |f| f.id }

        unless (query_filter.empty?)

          if  array.empty?
            @restaurant =''
          else
            array =  +' AND rest.id IN ('+array.join(',')+')'
            @restaurant = Restaurant.restaurant_of_list(id,array)
          end

        else
          array = ''
          @restaurant = Restaurant.restaurant_of_list(id,array)
        end

        @restaurant
    end


    #FIN DE METODOS DEL GRUPO 4


    # Retorna la información del restaurante
    def restaurant_info
        @promos = Promo.promos_of_restaurant(params[:id])

        # Devuelve un 404 si el restaurante no tiene promociones
        if(@promos.count() == 0)
            flash[:error] = "Restaurante invalido"
            render json: { error: "Restaurante invalido" }, :status => 404
        end

        @restaurant = Restaurant.find(params[:id])

        # Se agrega el promedio de cada calificacion del restaurante
        @restaurant_calif ={
            kitchen_avg: Comment.kitchen_score(params[:id]),
            ambient_avg: Comment.ambient_score(params[:id]),
            service_avg: Comment.service_score(params[:id])
        }

        @comment_count = Comment.comments_of_restaurant(params[:id]).count()

        if( @comment_count > 0)
            @restaurant_calif[:kitchen_avg] = @restaurant_calif[:kitchen_avg].round(1)
            @restaurant_calif[:ambient_avg] = @restaurant_calif[:ambient_avg].round(1)
            @restaurant_calif[:service_avg] = @restaurant_calif[:service_avg].round(1)

            @total_calif = ((@restaurant_calif[:kitchen_avg] + @restaurant_calif[:ambient_avg] + @restaurant_calif[:service_avg])/3)

            @comments = Comment.comments_of_restaurant(params[:id])
        else
            @restaurant_calif[:kitchen_avg] = 0
            @restaurant_calif[:ambient_avg] = 0
            @restaurant_calif[:service_avg] = 0
        end

        @usuario = User.find(@restaurant.user_id)

        @plates = Plate.plates_of_restaurant(params[:id])

        # Se generan las variables de mensajes de error
        @errors = {
            description: 'No error',
            plate: 'No error',
            comment: 'No error'
        }

        # Mensaje cuando no hay platos
        if @plates.empty?
            @errors[:plate] = "Este restaurante no tiene platos registrados."
            flash[:plate] = @errors[:plate]
        end

        @photos = Photo.photos_of_restaurant(params[:id])

        @place = Place.find(@restaurant.place_id)

        @comments = Comment.comments_of_restaurant(params[:id])

        # Mensaje cuando no hay reseñas
        if @comments.empty?
            @errors[:comment] = "Este restaurante no tiene calificaciones."
            flash[:comment] = @errors[:comment]
        end

        # Contador de las reseñas por valor
        @per_score_count = {
            five: 0,
            four: 0,
            three: 0,
            two: 0,
            one: 0
        }

        @comments.each do |item|
            @calif = ((item.kitchen_rating + item.ambient_rating + item.service_rating)/3.0)
            case @calif.round()
            when 5
                @per_score_count[:five] += 1
            when 4
                @per_score_count[:four] += 1
            when 3
                @per_score_count[:three] += 1
            when 2
                @per_score_count[:two] += 1
            when 1
                @per_score_count[:one] += 1
            end
        end

        # Mensaje cuando no hay descripcion
        if @restaurant.description.nil?
            @errors[:description] = "Este restaurante no posee una descripción."
            flash[:description] = @errors[:description]
        end
    end

end
