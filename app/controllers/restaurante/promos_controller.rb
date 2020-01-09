class Restaurante::PromosController < ApplicationController
  before_action :set_promo, only: [:show, :edit, :update, :destroy]
  before_action :set_calendar, :set_promo_calendar, only: [:edit, :update]
  before_action :authenticate_user!
  layout 'restaurante', only: %i[new create edit update index show]
  skip_before_action :verify_authenticity_token

  # GET /promos
  # GET /promos.json
  def index
    @promos = Promo.all
    @calendar = Calendar.all
  end

  # GET /promos/1
  # GET /promos/1.json
  def show
  end

  # GET /promos/new
  def new
    @promo = Promo.new
    @calendar = Calendar.new              # Calendario para guardar la fecha 
    @promo_calendar = PromoCalendar.new   # Calendario para guardar la fecha de la promoción
    @promo_plate = PromoPlate.new         # Plato en promoción dependiendo del tipo de promoción
  end

  # GET /promos/1/edit
  def edit
  end

  # POST /promos
  # POST /promos.json
  def create
    @promo = Promo.new(promo_params)
    @calendar = Calendar.new(calendar_params)
    @promo_calendar = PromoCalendar.new(promocalendar_params)
    @promo_plate = PromoPlate.new(promoplate_params)

    @restaurant = Restaurant.find_by user_id: current_user.id       #Se obtiene el ID del restaurante (usuario en sesión)
    @promo.restaurant_id = @restaurant.id

    respond_to do |format|
      if @promo.save
        format.html { redirect_to [:restaurante, @promo], notice: 'La promoción fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @promo }
      else
        format.html { render :new }
        format.json { render json: @promo.errors, status: :unprocessable_entity }
      end

      if @calendar.save
        format.html { redirect_to [:restaurante, @calendar], notice: 'La fecha fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @calendar }
      else
        format.html { render :new }
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end

      @promo_calendar.id = PromoCalendar.maximum(:id).next
      @promo_calendar.promo_id = @promo.id               # Guarda en la tabla promo_calendar
      @promo_calendar.calendar_id = @calendar.id         # el ID de la promo y el calendario
      @promo_calendar.save

      @promo_plate.promo_id = @promo.id                  # Guarda en la tabla promo_plate
      @promo_plate.plate_id = @promo.plate_ids           # el ID de la promo y del plato
      @promo_plate.save
    end
  end

  # PATCH/PUT /promos/1
  # PATCH/PUT /promos/1.json
  def update
    respond_to do |format|
      if @promo.update(promo_params)
        format.html { redirect_to [:restaurante, @promo], notice: 'La promo fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @promo }
      else
        format.html { render :edit }
        format.json { render json: @promo.errors, status: :unprocessable_entity }
      end
      
      if @calendar.update(calendar_params)
        format.html { redirect_to [:restaurante, @calendar], notice: 'El calendario fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @calendar }
      else
        format.html { render :edit }
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /promos/1
  # DELETE /promos/1.json


  def destroy

    @promo.destroy

    respond_to do |format|
      format.html { redirect_to restaurante_promos_url, notice: 'La promo fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promo                             # Busca por ID de la promo antes de una acción
      @promo = Promo.find(params[:id])
    end
    def set_calendar                          # Busca el ID del calendario antes de una acción
      @calendar = Calendar.find(params[:id])
    end
    def set_promo_calendar                    # Busca por ID en promo_calendar antes de una acción
      @promo_calendar = PromoCalendar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def promo_params                          # Define los parámetros de promo
      params.require(:promo).permit(:restaurant_id, :yumis, :promo_type, :name, :description, :plate_ids)
    end
    def calendar_params                       # Define los parámetros de calendario
      params.require(:calendar).permit(:final_date)
    end
    def promocalendar_params                  # Define los parámetros de promocalendar
      params.require(:calendar).permit(:promo_id, :calendar_id)
    end
    def promoplate_params                     # Define los parámetros de promoplate
      params.permit(:plate_id, :promo_id)
    end
end
