class ImagePolicy
	attr_reader :current_user, :model

	def initialize(current_user, model)
		@current_user = current_user
		@Image = model
	end

	def index?
		true
	end

	def show?
		true
	end

	def new?
		@current_user.admin? or @current_user.member?
	end

	def create?
		@current_user.admin? or @current_user.member?
	end

	def destroy?
		@current_user.admin? or @Image.user == @current_user
	end
end