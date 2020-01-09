class ApplicationController < ActionController::Base
  before_action :restaurant_without_data, :redirect_restaurant
  before_action :configure_devise_params, if: :devise_controller?
    
  def restaurant_without_data
    return unless user_signed_in? && current_user.is_restaurant? && current_user.restaurant.rif.blank?

    flash[:alert] = 'Debe terminar de completar sus datos como restaurante'
    redirect_to restaurante_editar_path
  end


  def redirect_restaurant
    if user_signed_in? && current_user.is_restaurant? && !request.path.include?('/restaurante/')
      redirect_to restaurante_home_path
    end
  end



    def configure_devise_params
        devise_parameter_sanitizer.permit(:sign_up) do |user|
           user.permit(:user_name,:email,:password,:password_confirmation,
                    :phone,:role_id, :aproved,
                    restaurant_attributes: [:name,:rif,:place_id,:address,:capacity,:zip_code,:description,
                    :start_time,:end_time,:particular])
        end
    end

    def authenticate_admin!
        redirect_to root_path unless user_signed_in? && current_user.is_admin?
    end
    def authenticate_restaurant!
        redirect_to root_path unless user_signed_in? && current_user.is_restaurant?
    end

    def after_sign_in_path_for(resource)
        if current_user.is_admin?
            stored_location_for(resource) || administrador_home_path
        elsif current_user.is_restaurant?
            stored_location_for(resource) || restaurante_home_path
        else
            stored_location_for(resource) || root_path
        end
    end

    def after_sign_up_path_for(resource)
       redirect_to new_user_session_path
    end

 
    
end
