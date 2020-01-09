class Restaurante::RestaurantsController < ApplicationController
    before_action :authenticate_user!, :permission_denied
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
    skip_before_action :restaurant_without_data
    layout 'restaurante', only: %i[new create edit update]
    include Devise::Controllers::Helpers
    require 'flickraw'
  
    # GET /restaurants
    # GET /restaurants.json
    def index
      @restaurants = Restaurant.all
    end
  
    # GET /restaurants/1
    # GET /restaurants/1.json
    def show
    end
  
    # GET /restaurants/new
    def new
      @restaurant = Restaurant.new
      @photo = @restaurant.photos.build
      
    end
  
    
  
    # GET /restaurants/1/edit
    def edit
  
      @photo = @restaurant.photos.build
      @photosr = @restaurant.photos.all
      @error_image = ''
  
      
      set_place_for()
      
    end
  
    # POST /restaurants
    # POST /restaurants.json
    def create
      @restaurant = Restaurant.new(restaurant_params)
      
      respond_to do |format|
        if @restaurant.save
          format.html { redirect_to restaurante_editar_path, notice: 'Tus datos fueron creados con exito.' }
        else
          format.html { render :new }
        end
      end
    end
  
    # PATCH/PUT /restaurants/1
    # PATCH/PUT /restaurants/1.json
    def update
  
      @restaurant.place_id = params[:place_id]
      fotos = params[:restaurant]['photos_attributes']
      
      
      valido = @restaurant.valid?

      @error_image = ''
      if fotos 
        fotos.each do |k,p|
          if !p['photo'].content_type.include? 'image'
            @error_image = 'El archivo '+p['photo'].original_filename+' no esta permitido <br>' + @error_image
          end
        end
      end

      
      


      if @restaurant.update(restaurant_params)
        
        if @error_image != ''
          @error_image = @error_image + ' Las extensiones permitidas son .png, .jpg, .jpeg'
  
          set_place_for()
          render :edit
          return

        end
        
        if fotos

          flickr = FlickRaw::Flickr.new
          flickr.access_token = '72157712125570122-2805a0ef1356921d'
          flickr.access_secret = '226febf05d1b7cc2'

          fotos.each do |k,p|

            begin
              up = flickr.upload_photo p['photo'].tempfile.path , :title => @restaurant.name , :description=>@restaurant.description
              info = flickr.photos.getInfo(:photo_id => up)
              url_foto = FlickRaw.url_b(info)
              @restaurant.photos.create(photo: url_foto)
            rescue FlickRaw::FailedResponse => e
              puts "Authentication failed : #{e.msg}"
            end
            
          end
        end

        redirect_to restaurante_editar_path, notice: 'Tus datos fueron actualizados con exito.'
        
      else
        
        if @error_image != ''
          @error_image = @error_image + ' Las extensiones permitidas son .png, .jpg, .jpeg'
        end
        
        set_place_for()

        render :edit
      end
    end
  
    # DELETE /restaurants/1
    # DELETE /restaurants/1.json
    def destroy
      @restaurant.destroy
      respond_to do |format|
        format.html { redirect_to _restaurants_url, notice: 'Restaurant was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    def destroy_photo
      set_restaurant()
  
      @photo = Photo.find_by(id: params[:id], restaurant_id: @restaurant.id)
      
      
      respond_to do |format|
      
        if @photo
          @photo.destroy
          @response = {ok: true}
          format.json { render json: @response }
          format.html
        else
          @response = {ok: false}
          format.json { render json: @response }
          format.html
        end
  
      end    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_restaurant
        @restaurant = Restaurant.find_by(user_id: current_user.id)
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def restaurant_params
        params.require(:restaurant).permit(
          :rif, :name, :address, :zip_code, :description, :start_time, :end_time, :map_location, 
          :capacity, :particular,
          # photos_attributes: [:id, :photo, :_destroy],
          user_attributes: [:id, :phone]
        )
      end

      def permission_denied
        render plain: 'No eres un restaurante' if current_user.role_id != 2
      end

      def set_place_for
        @photosr = @restaurant.photos.all
        
        if @restaurant.place_id
          parroquia = Place.find(@restaurant.place_id)
          @parroquia_id = parroquia.id 
          
          municipio = Place.find(parroquia.place_id)
          @municipio_id = municipio.id
          
          estado = Place.find(municipio.place_id)
          @estado_id = estado.id
        end
      end
    
end
