class Image < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	validates :body_type, presence: true
end
