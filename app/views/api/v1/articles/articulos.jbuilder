

json.articles @articles do |article|
    json.title article.title
    json.description article.description
    json.cont_trend article.cont_trend
end
json.description @articles.name
json.error_description @errors[:description]
