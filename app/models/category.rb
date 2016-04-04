class Category < ActiveRecord::Base
	has_many :videos

	validates :title, :image, presence: true

	mount_uploader :image, ImageUploader
end
