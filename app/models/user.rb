class User < ActiveRecord::Base
	enum role: [:guest, :member, :admin]
	after_initialize :set_default_role, :if => :new_record?
	has_many :images
	has_many :comments

	validates :email, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :dob, presence: true

	def set_default_role
		self.role ||= :guest
	end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
