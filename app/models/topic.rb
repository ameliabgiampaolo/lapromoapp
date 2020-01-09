class Topic < ApplicationRecord
	has_many :articles
	scope :get_topic, ->(id) {select('topics.*')}
	validates :name, presence: true, uniqueness: true, length: {minimum: 5, maximum:100}

	scope :topics, ->(rest){
		(where "id = ?", rest).pluck('name')
	}

end
