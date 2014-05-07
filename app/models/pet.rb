class Pet < ActiveRecord::Base
	has_many :dogs
	has_many :breeds, through: :dogs, source: :dog_breeds
end
