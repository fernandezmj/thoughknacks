class Category < ActiveRecord::Base
	has_many :videos

	validates :title, presence: true
end
