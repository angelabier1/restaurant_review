class Restaurant < ActiveRecord::Base
	has_many :reviews, inverse_of: :restaurant
	has_many :recommendations
	validates :name, uniqueness: { case_sensitive: false }
	validates_associated :reviews
	validates :name, presence: true
	accepts_nested_attributes_for :reviews, allow_destroy: true
	accepts_nested_attributes_for :recommendations, allow_destroy: true
	mount_uploader :picture, PictureUploader
end
