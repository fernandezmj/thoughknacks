class Video < ActiveRecord::
	belongs_to :user, :category

	validates :title, :user_id, :video_link, :thumbnail, :category_id, presence: true
end
