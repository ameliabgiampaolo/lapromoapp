
json.contador @topic.cont_trend
json.topic_n @topic.name
json.articulos @articles do |article|
    json.id article.id
    json.title article.title
    json.description article.description
    json.cont_trend article.cont_trend
    json.topic article.topic.name
    json.created_at article.created_at
end
json.error_description @errors[:description]
