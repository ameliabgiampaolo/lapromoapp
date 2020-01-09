# frozen_string_literal: true
class Users::RegistrationsController < Devise::RegistrationsController
  skip_before_action :restaurant_without_data, except: %i[edit update]
  skip_before_action :redirect_restaurant
  before_action :configure_account_update_params, only: [:update]
  layout :set_layout, only: [:edit, :update]

  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
   
  @@user_role_id = 3
  # GET /users/restaurant/sign_up
  ## metodo para registrar usuario restaurante
  def create_restaurant
    build_resource()
    yield resource if block_given?
    resource.build_restaurant
    respond_with self.resource    
    @@user_role_id = 2
  end
  
  # GET /resource/sign_up
   def new
     @@user_role_id = 3
     super
   end
  # POST /resource
   def create
    build_resource(sign_up_params)
    resource.role_id = @@user_role_id
    if resource.is_restaurant?
      resource.approved = false
    end
    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      resource.errors.full_messages.each {|x| flash[x] = x}
      response_with_failure_signup(resource)  
    end
   end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end

  def set_layout
    if current_user.is_diner?
      'application'
    elsif current_user.is_restaurant?
      'restaurante'
    end
  end

  protected

  def update_resource(resource, params)
    if params[:current_password].blank? && params[:password].blank? && params[:password_confirmation].blank?
     resource.update_without_password(params.except(:current_password))
    else
      resource.update_with_password(params)

    end
  end

  def after_update_path_for(resource)
    flash[:alert] = "Datos actualizados correctamente"
    edit_user_registration_path
  end

  private
  ## metodo para renderizar las respectivas vistas despues de fallar el registro
  def response_with_failure_signup(resource)
     puts "entro a response #{resource.errors.full_messages}"
     if resource.is_diner?
       respond_with resource
     else
       #redirect_to  users_restaurant_sign_up_path(resource)
       render "create_restaurant"
     end
  end
end
