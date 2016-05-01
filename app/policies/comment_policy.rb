class CommentPolicy
	attr_reader :current_user, :model

	def initialize(current_user, model)
		@current_user = current_user
		@comment = model
	end

	def create?
		@current_user.member? or @current_user.admin?
	end

	def destroy?
		@current_user == @comment.user or @current_user.admin?
	end
end