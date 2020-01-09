class Api::V1::ArticlesController < ApplicationController

    # Retorna los temas
    def temas
        @topics = Topic.all.order('name ASC')
        @errors = {
            description: 'No error',
        }
        if @topics.empty?
            @errors[:disponibilidad] = "No se consiguieron preguntas frecuentes de este tema."
            flash[:description] = @errors[:disponibilidad]
        end
    end

    # Retorna los articulos
    def articulos
        @articles = Article.all.order('title ASC')
        @errors = {
            description: 'No error',
        }
        if @articles.empty?
            @errors[:disponibilidad] = "Actualmente no se tiene preguntas registradas."
            flash[:description] = @errors[:disponibilidad]
        end
    end

    # Retorna los articulos de un tema
    def art_per_tema
        @topic = Topic.find(params[:id])
        @topic.cont_trend = @topic.cont_trend + 1
        @topic.save
        @articles = Article.joins(:topic).where(:topics => { :id => params[:id] }).all
        @errors = {
            description: 'No error',
        }
        if @articles.empty?
            @errors[:disponibilidad] = "No se consiguieron articulos de este tema."
            flash[:description] = @errors[:disponibilidad]
        end
    end

    # Aumenta la tendencia de un articulo
    def add_tendencia
        @article = Article.find(params[:id])
        @article.cont_trend = @article.cont_trend + 1
        @article.save      
    end

end
