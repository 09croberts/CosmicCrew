class CommentsController < ApplicationController
	before_action :authenticate_user!
	after_action :verify_authorized

	def create
		@Image = Image.find(params[:image_id])
		@Comment = @Image.comments.new(comment_params)
		@Comment.user_id = current_user.id

		authorize @Comment
		@Comment.save

		redirect_to image_show_path(@Image)
	end

	def destroy
		@Image = Image.find(params[:image_id])
		@Comment = Comment.find(params[:id])
		authorize @Comment
		@Comment.destroy
		redirect_to image_show_path(@Image)
	end

	private
		def comment_params
			params.require(:comment).permit(:text)
		end
end
