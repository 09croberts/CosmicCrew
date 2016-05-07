class Image < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	belongs_to :user
	has_many :comments

	validates_inclusion_of :body_type, :in => ["Comet",
                                               "Constellation",
                                               "Galaxy",
                                               "Meteor",
                                               "Satellite",
                                               "Solar Body",
                                               "Star"], :allow_nil => false
	validates :title, length: { minimum: 1, maximum: 50, message: "must be 1-50 characters long" }
	validates :location, length: { minimum: 1, maximum: 100, message: "must be 1-100 characters long" }
	validates :description, length: { maximum: 500, message: "must not be longer than 500 characters" }
	validates_numericality_of :width, greater_than: 99, message: "must be great than 100px"
	validates_numericality_of :height, greater_than: 99, message: "must be great than 100px"
	validates :user_id, presence: true
	validate :date_must_be_in_the_past

	def date_must_be_in_the_past
		if !(date == nil)
			if date > Date.today
				errors.add(:date, "can't be in the future")
			end
		else
			errors.add(:date, "must exist")
		end
	end

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
