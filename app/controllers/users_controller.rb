class UsersController < ApplicationController
	before_action :authenticate_user!, :except => [:create]
	after_action :verify_authorized, :except => [:create]

  def show
  	@user = User.find(params[:id])
  	authorize User
  end

  def index
    @users = User.all
    authorize User
  end

  def update
  	@user = User.find(params[:id])
  	authorize User

  	if @user.update_attributes(secure_params)
  		redirect_to users_path, :notice => "Account updated"
  	else
      flash[:alert] = @user.errors.full_messages.join(', ')
  		redirect_to users_path
  	end
  end

  def create
    @user = User.new(sign_up_params)
    if @user.save
      redirect_to root_path, notice: "Signed up"
    else
      flash[:alert] = @user.errors.full_messages.join(', ')
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
