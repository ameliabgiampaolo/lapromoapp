class Administrador::ArticlesController < ApplicationController
layout 'administrador'
helper_method :sort_column, :sort_direction
before_action :set_article, only: [:show, :edit, :update, :destroy, :confirm]

  # GET 
  def index
    @search = params[:title]
    @cont = 0 
    @SC_title = 0
    @SC_description = 0
    @SC_tendencia = 0
    @SC_usuario = 0
    @SC_tema = 0
    @ASC0_DESC1 = 0
    if @search
      @articles = Article.where('title ILIKE ?',"%#{params[:title]}%").page(params[:page]).per_page(10).order(sort_column+" "+sort_direction)
      @cont = 1
    else
      @articles = Article.all.page(params[:page]).per_page(10).order(sort_column+" "+sort_direction)
      case sort_column
      when "title"
        if sort_direction == "asc"
          @SC_title = 1
          @SC_description = 0
          @SC_tendencia = 0
          @SC_usuario = 0
          @SC_tema = 0
          @ASC0_DESC1 = 0
        elsif sort_direction == "desc"
          @SC_title = 1
          @SC_description = 0
          @SC_tendencia = 0
          @SC_usuario = 0
          @SC_tema = 0
          @ASC0_DESC1 = 1
        end
      when "description"
        if sort_direction == "asc"
          @SC_title = 0
          @SC_description = 1
          @SC_tendencia = 0
          @SC_usuario = 0
          @SC_tema = 0
          @ASC0_DESC1 = 0
        elsif sort_direction == "desc"
          @SC_title = 0
          @SC_description = 1
          @SC_tendencia = 0
          @SC_usuario = 0
          @SC_tema = 0
          @ASC0_DESC1 = 1
        end
      when "cont_trend"
        if sort_direction == "asc"
          @SC_title = 0
          @SC_description = 0
          @SC_tendencia = 1
          @SC_usuario = 0
          @SC_tema = 0
          @ASC0_DESC1 = 0
        elsif sort_direction == "desc"
          @SC_title = 0
          @SC_description = 0
          @SC_tendencia = 1
          @SC_usuario = 0
          @SC_tema = 0
          @ASC0_DESC1 = 1
        end
      when "cont_trend"
        if sort_direction == "asc"
          @SC_title = 0
          @SC_description = 0
          @SC_tendencia = 1
          @SC_usuario = 0
          @SC_tema = 0
          @ASC0_DESC1 = 0
        elsif sort_direction == "desc"
          @SC_title = 0
          @SC_description = 0
          @SC_tendencia = 1
          @SC_usuario = 0
          @SC_tema = 0
          @ASC0_DESC1 = 1
        end
      when "user_id"
        if sort_direction == "asc"
          @SC_title = 0
          @SC_description = 0
          @SC_tendencia = 0
          @SC_usuario = 1
          @SC_tema = 0
          @ASC0_DESC1 = 0
        elsif sort_direction == "desc"
          @SC_title = 0
          @SC_description = 0
          @SC_tendencia = 0
          @SC_usuario = 1
          @SC_tema = 0
          @ASC0_DESC1 = 1
        end
      when "topic_id"
        if sort_direction == "asc"
          @SC_title = 0
          @SC_description = 0
          @SC_tendencia = 0
          @SC_usuario = 0
          @SC_tema = 1
          @ASC0_DESC1 = 0
        elsif sort_direction == "desc"
          @SC_title = 0
          @SC_description = 0
          @SC_tendencia = 0
          @SC_usuario = 0
          @SC_tema = 1
          @ASC0_DESC1 = 1
        end
      end #DEL CASE
    end #DEL IF @articles
  end #DEL DEF

  # GET 
  def show
    @article = Article.find(params[:id])
  end

  # GET 
  def confirm
    #Manejo de sql (modelo) para obtener boolean
    if @article.destroy
      render json: {message: "Articulo " + params[:name] + " fue eliminado satisfactoriamente"}, status: :ok
    else
      render json: {message: "No se pudo realizar el delete del articulo " + params[:name] + ". Por favor verificar el articulo"}, status: :internal_server_error
    end
  end

  # GET 
  def new
    @article = Article.new()

    #@topics = Topic.all
  end
  # POST 
  def create
    @article = Article.new(article_params)
    @article.cont_trend = 0
    @article.user_id = current_user.id
      if @article.save
       redirect_to administrador_articles_path, 
          notice: 'El artículo fue creado exitosamente.'
      else
        render :new 
      end

  end

  # GET 
  def edit
    @article = Article.find(params[:id])
  end

  # PATCH/PUT 
  def update
      if @article.update(article_params)
        redirect_to administrador_articles_path, 
          notice: 'El artículo fue modificado exitosamente.'
      else
        render :edit 
      end
    
  end

  def sort_column
      params[:sort] || "title"
    end

  def sort_direction
      params[:direction] || "asc"
    end
  # DELETE 
  def destroy
    @article.destroy
    redirect_to administrador_articles_path

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :description, :cont_trend, :user_id, :topic_id)
    end

end
