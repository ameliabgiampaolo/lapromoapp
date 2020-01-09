require 'will_paginate/array'

class CommentsController < ApplicationController
    layout 'application'
    before_action :authenticate_user!, only: :my_comments
    
    def ShowOpinion
        #parametro del restaurante a consultar
        @restaurantID = params[:restaurantID]
        #Consulta para obtener todas las opiniones realizadas por los usuarios
        @opiniones=Comment.find_by_sql("select r.id as Restaurant,p.name||' '|| p.last_name as nombre, 
                                        c.kitchen_rating,c.ambient_rating,
                                        c.service_rating,
                                        c.description,
                                        to_char(c.created_at, 'DD-MON-YYYY') as fecha
                                        from restaurants r,diners p, comments c,reservations res
                                        where res.restaurant_id=r.id and res.diner_id=p.id and c.reservation_id=res.id and r.id=#{@restaurantID}
                                        order by fecha desc ").paginate(:page => params[:page], :per_page => 10)
        # si no hay opiniones , se muestra un mensaje de error
        if @opiniones.empty?
            
             flash[:warning] ="No hay opiniones para este restaurant"

        end
    
    end

    
    def my_comments 
        #consulta para obtener las opiniones personales del usuario
        @diners = Diner.select("id").where("user_id = ?", current_user.id)
        @opinions = Comment.select("id","kitchen_rating", "service_rating", "ambient_rating", "description", "restaurants.name").joins(reservation: [:diner , :restaurant])
        .where('diners.id = ?', @diners[0]).paginate(:page => params[:page], :per_page => 9)
        # si no hay comentarios, se muestra el mensaje.

        if @opinions.empty?
            flash.now[:warning] = 'No tienes opiniones realizadas'
        end
        
    end 
end
