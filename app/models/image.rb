class Image < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	belongs_to :user
	has_many :comments
	validates :body_type, presence: true
	validates :user_id, presence: true

	def self.search_btype(search)
		if !search.empty?
			where(["body_type LIKE ?", "%#{search}%"])
		else
			all
		end
	end

	def self.search_date(search)
		if !search.empty?
			where(["created_at >= ?", search.to_time])
		else
			all
		end
	end
end
