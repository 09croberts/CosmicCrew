class User < ActiveRecord::Base
	enum role: [:guest, :member, :admin]
	after_initialize :set_default_role, :if => :new_record?
	has_many :images
	has_many :comments

	validates :email, format: { with: /.+@.+\..+/i }
	validates :first_name, length: { minimum: 1, maximum: 20, message: "must be 1-20 characters long" }
	validates :first_name, format: {  with: /\A^[-a-z]+\z/i, message: "must only contain letters" }	
	validates :last_name, length: { minimum: 1, maximum: 20, message: "must be 1-20 characters long" }
	validates :last_name, format: {  with: /\A^[-a-z]+\z/i, message: "must only contain letters" }	
	validate :dob_must_be_in_the_past

	def dob_must_be_in_the_past
		if !(date == nil)
			if date > Date.today
				errors.add(:date, "can't be in the future")
			end
		else
			errors.add(:date, "must exist")
		end
	end

	def set_default_role
		self.role ||= :guest
	end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
