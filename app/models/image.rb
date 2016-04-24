class Image < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	belongs_to :user
	has_many :comments
	validates :body_type, presence: true
	validates :user_id, presence: true

	def self.search_btype(search)
		if search && !search.empty?
			where(["body_type LIKE ?", "%#{search}%"])
		else
			all
		end
	end

	def self.search_date_start(search)
		if search && !search.empty?
			where(["date >= ?", search.to_date])
		else
			all
		end
	end

	def self.search_date_end(search)
		if search && !search.empty?
			where(["date <= ?", search.to_date])
		else
			all
		end
	end

	def self.search_location(search)
		if search && !search.empty?
			where(["location LIKE ?", "%#{search}%"])
		else
			all
		end
	end
end
