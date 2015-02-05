class Review < ActiveRecord::Base
	belongs_to :restaurant
	validates :restaurant, :body, presence: true

end
