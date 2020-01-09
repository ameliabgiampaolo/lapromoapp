class Api::V1::ReservationsController < ApplicationController

    # before_action :set_default_response_format

    # protected

    # def set_default_response_format
    #     request.format = :json
    # end

    def reserva
        @resturant_id = params[:id] # prametro que indica el id del restaurante
        
        @dias = Reservation.find_by_sql("select to_date(to_char(a.reservation_date, 'YYYY/MM/DD'), 'YYYY/MM/DD') as dia,
        b.capacity, sum(a.people_num) as people from reservations a, restaurants b
        where a.restaurant_id = b.id and b.id = #{@resturant_id} and a.reservation_date between now() and now() + interval '91 days' group by 2,1 having b.capacity <= sum(a.people_num)
        limit 90")       # recibe todos los dias ocupados de un lapso de 90 dias
        
        @restaurant_info = Restaurant.find(params[:id])

        # Se generan las variables de mensajes de error
        @errors = {
            disponibilidad: 'No error',
            ofertas: 'No error'
        }

        if (@dias.count() >= 90)    # solo se puede reservar con 90 dias de antelacion, por lo tanto, si 90 dias estan ocupados, no hay dias disponibles
            @errors[:disponibilidad] = "No hay dias reservables."            
            flash[:disponibilidad] = @errors[:disponibilidad]
        end


        @diaspromos = Promo.dias_promo(params[:id]) # recibe los dias y nombres de cada promo de un restaurante
        if @diaspromos.empty?       #si no hay promos...
            @errors[:ofertas] = "No hay promociones diponibles."
            flash[:ofertas] = @errors[:ofertas]
        end

    end

end
