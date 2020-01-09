

json.topics @topics do |topic|
    json.id topic.id
    json.name topic.name
    json.image topic.image
    json.cont_trend topic.cont_trend
end
json.description @topics.name
json.error_description @errors[:description]
