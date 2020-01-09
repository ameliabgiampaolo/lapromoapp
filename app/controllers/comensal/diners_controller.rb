class Comensal::DinersController < ApplicationController
  before_action :authenticate_user!, :permission_denied
  before_action :set_diner, only: [:show, :edit, :update, :destroy]
  
  # GET /diners
  # GET /diners.json
  def index
    @diners = Diner.all
  end

  # GET /diners/1
  # GET /diners/1.json
  def show
  end

  # GET /diners/new
  def new
    @diner = Diner.new
  end

  def edit
    set_address()
  end

  # POST /diners
  # POST /diners.json
  def create
    @diner = Diner.new(diner_params)

    respond_to do |format|
      if @diner.save
        format.html { redirect_to @diner, notice: 'Diner was successfully created.' }
        format.json { render :show, status: :created, location: @diner }
      else
        format.html { render :new }
        format.json { render json: @diner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @comensal.place_id = params[:place_id]
    
    if @comensal.update(diner_params)
      redirect_to comensal_editar_path, notice: 'Cambios registrados exitosamente'
    else

      puts '-----------------------------'
      puts @comensal.errors.inspect
      puts '-----------------------------'
      set_address()

      render :edit    
    end
  end

  # DELETE /diners/1
  # DELETE /diners/1.json
  def destroy
    @diner.destroy
    respond_to do |format|
      format.html { redirect_to comensal_diners_url, notice: 'Diner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_diner
    @comensal = current_user.diner.blank? ? current_user.build_diner : current_user.diner
  end

  def permission_denied
    render plain: 'No eres un comensal' if current_user.role_id != 3
  end

  def diner_params
    params.require(:diner).permit(
      :name, :last_name, :place_notif, :favorite_notif,
      :start_price, :end_price, :identity_card, :gender, :place_id, :birth_date,
      user_attributes: %i[id phone]
    )
  end

  def set_address
    if @comensal.place_id
      parroquia = Place.find(@comensal.place_id)
      @parroquia_id = parroquia.id 
      
      municipio = Place.find(parroquia.place_id)
      @municipio_id = municipio.id
      
      estado = Place.find(municipio.place_id)
      @estado_id = estado.id
    end
  end

end
