class Administrador::RestaurantsController < ApplicationController
  layout 'administrador'
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!
  # GET /restaurants
  # GET /restaurants.json
  ##contiene los restaurantes aprobados
  def approved_restaurants
    @restaurants = Restaurant.aprobados
  end
  ## METODO PARA CANCELAR APROBACION EN CASO DE QUE RESTAURANTE NO PAGUE MEMBRESIA MENSUAL
  def cancel_restaurant
      @restaurant = Restaurant.find(params[:id])
      @user = User.find(@restaurant.user_id)
      @user.approved = false
      if @user.save
        flash[:notice] = "Se ha prohibido el acceso a #{@restaurant.name}"
        AdminRestaurantMailer.with(user: @user).admin_cancel_email.deliver_now ##metodo que llama a envio de correo
      else
        flash[:notice] = "Error al prohibir acceso"
      end 
     
  end
  ## METODO PARA RECHAZAR RESTAURANTE
  def reject_restaurant
      @restaurant = Restaurant.find(params[:id])
      @user = User.find(@restaurant.user_id)
      if @user.destroy
        AdminRestaurantMailer.with(user: @user).admin_reject_email.deliver_now ##metodo que llama a envio de correo
        redirect_to administrador_not_approved_path
      else
        flash[:notice] = "Error al prohibir acceso"
      end
  end
  
  ##Restaurantes no aprobados
  def not_approved_restaurants
    @restaurants = Restaurant.no_aprobados
  end
  ## Contiene todos los restaurantes
  def index
    @restaurants = Restaurant.all
    #if @restaurants.empty?
    #  flash[:warning] = "No hay restaurantes registrados"
    #end
 end
  ## metodo para aprobar restaurantes
  def approve_restaurant
    @restaurant = Restaurant.find(params[:id])
    @user = User.find(@restaurant.user_id)
    @user.approved = true
    if @user.save
      flash[:notice] = "Restaurante #{@restaurant.name} aprobado exitosamente"
      AdminRestaurantMailer.with(user: @user).admin_approve_email.deliver_now ##metodo que llama a envio de correo
    else
      flash[:notice] = "Error al aprobar"
    end 
  end
  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    @place = Place.find(@restaurant.place_id)
    @user = User.where("id = #{@restaurant.user_id}")
    @photo = Photo.where("restaurant_id = #{@restaurant.id}").pluck('photo')
  end

  # GET /restaurants/new
  def new
 
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to [:administrador,@restaurant], notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to [:administrador,@restaurant], notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to administrador_restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name)
    end
    
   
end
