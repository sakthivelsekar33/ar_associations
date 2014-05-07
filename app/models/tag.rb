class Tag < ActiveRecord::Base
	has_many :taggings, dependent: :destroy
	has_many :movies, through: :taggings, source: :taggable, source_type: 'Movie'
	has_many :books, through: :taggings, source: :taggable, source_type: 'Book'
end
