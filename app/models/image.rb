class Image < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	validates :body_type, presence: true

	def self.search(search)
		if search
			where(["body_type LIKE ?", "%#{search}%"])
		else
			all
		end
	end
end
