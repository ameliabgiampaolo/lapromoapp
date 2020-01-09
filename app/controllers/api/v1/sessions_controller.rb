class Api::V1::SessionsController < Devise::SessionsController

  prepend_before_action :require_no_authentication, :only => [:create]
  skip_before_action :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  #before_action :valid_authenticity_token, :except => :create
  include Devise::Controllers::Helpers
  #include ApiHelper
  respond_to :json


#Metodo de devise que loguea a un usuario registrado
  def create
    resource = User.find_for_database_authentication(:email => params[:email])
    return failure unless resource

    if resource.valid_password?(params[:password])
      sign_in(:user, resource)
      #resource.ensure_authentication_token!
      render :json=> {:success => true, :token => resource}
      return
    end
    failure
  end

  #Metodo de mensaje de error cuando no se logra autenticar con el login
  def failure
    return render json: { success: false, errors: 'Datos invalidos'}, :status => :unauthorized
  end

end
