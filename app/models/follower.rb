class Follower < ActiveRecord::Base
	validates :user_id, :follow_user_id, presence: true 
end
