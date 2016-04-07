class Video < ActiveRecord::Base
	belongs_to :category

	validates :title, :video_link, :thumbnail, :category_id, :video_link, presence: true
	validates :title, :uniqueness => {:case_sensitive => false}

	mount_uploader :thumbnail, ThumbnailUploader
  
  mount_uploader :video_link, VideoLinkUploader 
end
