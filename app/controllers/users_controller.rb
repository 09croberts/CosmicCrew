class UsersController < ApplicationController
	before_action :authenticate_user!, :except => [:create, :show]
	after_action :verify_authorized, :except => [:create, :show]

  def index
  	@users = User.all
  	authorize User
  end

  def show
  	@user = User.find(params[:id])
  	authorize User
  end

  def update
  	@user = User.find(params[:id])
  	authorize User

  	if @user.update_attributes(secure_params)
  		redirect_to users_path, :notice => "Account updated"
  	else
  		redirect_to users_path, :alert => "An error occurred"
  	end
  end

  def create
    @user = User.new(sign_up_params)
    if @user.save
      redirect_to root_path, notice: "Signed up"
    else
      flash[:alert] = "An error occurred"
      redirect_to new_user_registration_path
    end
  end

  private
  	def secure_params
  		params.require(:user).permit(:role)
  	end

    def sign_up_params
      params.require(:user).permit(:email, :first_name, :last_name, :dob,
                                    :password, :password_confirmation)
    end
end
