class RegistrationsController < Devise::RegistrationsController
	def destroy
		@User = current_user
		authorize @User

		@User.comments.destroy_all
		@User.images.destroy_all
		@User.destroy
		redirect_to root_path, notice: "The account has been deleted"
	end

	def account_update_params
		params.require(:user).permit(:first_name, :last_name,
										:password, :password_confirmation, :current_password)
	end
end