class Dog < ActiveRecord::Base
	belongs_to :pet
	has_many :dog_breeds
end
