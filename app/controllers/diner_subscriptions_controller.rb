class DinerSubscriptionsController < ApplicationController
    include ApplicationHelper 
    
    before_action :authenticate_user!, :check_for_diner_user

    def index 
        @diner = current_user.diner
        
        render "diner-subscriptions/index"
    end

    def update
        subscription_type = params['subscription_type']

        diner = current_user.diner

        if diner.has_attribute?(subscription_type)
            diner[subscription_type] = !diner[subscription_type]
            diner.save
        else
            head 422
        end
    end
end