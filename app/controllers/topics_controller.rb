class TopicsController < ApplicationController
  
  def index
  	@topics = Topic.where(id: Article.pluck('topic_id'))
  	if @topics.empty?
        flash[:warning] = "Actualmente no existen preguntas frecuentes registradas"
    		render :empty
  	elsif @topics.count == 1
  		  redirect_to controller:'articles',action: 'index', topic_id: @topics[0].id 
  	end

  end

  def empty
  end

end

