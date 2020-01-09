class AdminRestaurantMailer < ApplicationMailer
    def admin_approve_email
        @restaurant = params[:user]
        mail(to: "#{@restaurant.email}", subject: 'Solicitud aprobada'  )
    end 
    def admin_reject_email
        @restaurant = params[:user]
        mail(to: "#{@restaurant.email}", subject: 'Solicitud rechazada'  )
    end 
    def admin_cancel_email
        @restaurant = params[:user]
        mail(to: "#{@restaurant.email}", subject: 'Acceso cancelado'  )
    end 
end
