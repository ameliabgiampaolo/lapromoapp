class DinersController < ApplicationController
    def get_my_opinions
        @opinions = Comment.joins(reservation: :diner)
        .where('diners.id = ?', 1)
        if @opinions.empty?
            flash.now[:warning] = 'No tienes opiniones realizadas'
        end
        return @opinions
    end
end
