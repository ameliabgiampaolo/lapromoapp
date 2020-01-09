# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    # se realiza la asignacion de role a quien se este registrando
    # users/auth/google_oauth2?user=comensal
    # validar
    if request.env['omniauth.params']['user'] == 'diner'
      puts 'Un comensal'
      role = 3
    elsif request.env['omniauth.params']['user'] == 'restaurant'
      puts 'Un restaurant'
      role = 2
    else
      role = nil
    end
    puts request.env['omniauth.auth']

    @user = User.from_omniauth(request.env['omniauth.auth'], role)

    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
      @user.errors.add(:role, 'Rol Invalido') unless role
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end

  # You should also create an action method in this controller like this:
  # def twitter
  # end
  def after_confirmation_path_for
    redirect_to new_user_session_path
  end
  
  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  protected

  def after_sign_in_path_for(resource)
    if resource.role_id == 2
      if resource.restaurant.rif.nil?
        flash[:alert] = 'Debe terminar de completar sus datos como restaurante'
        stored_location_for(resource) || restaurante_editar_path
      else
        stored_location_for(resource) || restaurante_home_path
      end
    else
      stored_location_for(resource) || root_path
    end
  end

  def after_omniauth_failure_path_for(scope)
    super(scope)
  end
end
