class Email < ActiveRecord::Base
	belongs_to :user, :category
end
