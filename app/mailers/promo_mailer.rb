class PromoMailer < ApplicationMailer
    def new_promo_mail
        @diner = params[:diner]
        @promo = params[:promo]
        
        mail(to: @diner.user.email, subject: "El restaurant " + @promo.restaurant.name + " ha creado una nueva promocion!")
    end

    def updated_promo_mail
        @diner = params[:diner]
        @promo = params[:promo]
        
        mail(to: @diner.user.email, subject: "El restaurant " + @promo.restaurant.name + " ha actualizado una de sus promociones!")
    end
end
