class Restaurante::PlatesController < ApplicationController
  before_action :set_plate, only: [:show, :edit, :update, :destroy]
  layout 'restaurante', only: %i[new create edit update index show]
  before_action :authenticate_user!

  # GET /plates
  # GET /plates.json
  def index
    @plates = Plate.all
  end

  # GET /plates/1
  # GET /plates/1.json
  def show
  end

  # GET /plates/new
  def new
    @plate = Plate.new
  end

  # GET /plates/1/edit
  def edit
  end

  # POST /plates
  # POST /plates.json
  def create
    @plate = Plate.new(plate_params)

    respond_to do |format|
      if @plate.save
        format.html { redirect_to [:restaurante, @plate], notice: 'El plato ha sido creado exitosamente.' }
        format.json { render :show, status: :created, location: @plate }
      else
        format.html { render :new }
        format.json { render json: @plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plates/1
  # PATCH/PUT /plates/1.json
  def update
    respond_to do |format|
      if @plate.update(plate_params)
        format.html { redirect_to [:restaurante, @plate], notice: 'El plato ha sido modificado exitosamente.' }
        format.json { render :show, status: :ok, location: @plate }
      else
        format.html { render :edit }
        format.json { render json: @plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plates/1
  # DELETE /plates/1.json
  def destroy
    @plate.destroy
    respond_to do |format|
      format.html { redirect_to restaurante_plates_url, notice: 'El plato ha sido eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plate                                                                     #Busca por ID del plato antes de una accion
      @plate = Plate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plate_params                                                                   #Define los parametros del plato
      params.require(:plate).permit(:name, :description, :price, :menu_type_id)
    end
end
