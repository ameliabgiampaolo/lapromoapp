class ArticlesController < ApplicationController
	def index
		@topics = Topic.find(params[:topic_id])
		cont_trend = @topics.cont_trend + 1
		@topics.update("cont_trend" => cont_trend)
		@articles = Article.where(topic_id: params[:topic_id]).page(params[:page]).per_page(8)
		
		if @articles.empty?
			flash[:warning] = "Actualmente no existen preguntas frecuentes registradas"
		else 
			 flash[:warning] = "Se han encontrado preguntas frecuentes"
		end
	end

	def contenido
		@articles = Article.find(params[:id])
		cont_trend = @articles.cont_trend + 1
		@articles.update("cont_trend" => cont_trend)
		@tendencia = Article.order(cont_trend: :desc).limit(5)
	  	flash[:warning] = "Se encontro la pregunta frecuente"
		
	end

	def busqueda
		@search = params[:title]
		if @search
			@articles = Article.where('title ILIKE ?',"%#{params[:title]}%").page(params[:page]).per_page(8)
			flash[:warning] = "Se encontraron resultados"
			if @articles.empty?
				flash[:warning] = "La busqueda no devolvio resultados"
				render :empty, busqueda: @search
			end
		end
	end

	def empty
		@search = params([:busqueda])
	end

	private

	def article_params
      params.require(:article).permit(:title, :description, :cont_trend, :user_id, :topic_id)
    end
    
end
