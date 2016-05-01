class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :image

	validates :user_id, presence: true
	validates :image_id, presence: true
	validates :text, length: { minimum: 1, maximum: 500, message: "must be 1-500 characters long" }
end
