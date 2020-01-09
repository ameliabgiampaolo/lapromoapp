class Restaurante::MenuTypesController < ApplicationController
  before_action :set_menu_type, only: [:show, :edit, :update, :destroy]
  layout 'restaurante', only: %i[new create edit update index show]
  before_action :authenticate_user!

  # GET /menu_types
  # GET /menu_types.json
  def index
    @menu_types = MenuType.all
  end

  # GET /menu_types/1
  # GET /menu_types/1.json
  def show
  end

  # GET /menu_types/new
  def new
    @menu_type = MenuType.new
  end

  # GET /menu_types/1/edit
  def edit
  end

  # POST /menu_types
  # POST /menu_types.json
  def create
    @menu_type = MenuType.new(menu_type_params)

    @restaurant = Restaurant.find_by user_id: current_user.id     #Se obtiene el ID del restaurante (usuario en sesion)
    @menu_type.restaurant_id = @restaurant.id 

    respond_to do |format|
      if @menu_type.save
        format.html { redirect_to [:restaurante, @menu_type], notice: 'Tipo de menú creado con éxito.' }
        format.json { render :show, status: :created, location: @menu_type }
      else
        format.html { render :new }
        format.json { render json: @menu_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_types/1
  # PATCH/PUT /menu_types/1.json
  def update
    respond_to do |format|
      if @menu_type.update(menu_type_params)
        format.html { redirect_to [:restaurante, @menu_type], notice: 'Tipo de menú actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @menu_type }
      else
        format.html { render :edit }
        format.json { render json: @menu_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_types/1
  # DELETE /menu_types/1.json
  def destroy
    @menu_type.destroy
    respond_to do |format|
      format.html { redirect_to restaurante_menu_types_url, notice: 'Tipo de menú eliminado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_type                                                  #Busca por ID del tipo de menu antes de una accion
      @menu_type = MenuType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_type_params                                               #Define los parametros del tipo de menu
      params.require(:menu_type).permit(:name, :restaurant_id)
    end
end
