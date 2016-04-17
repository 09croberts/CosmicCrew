class ImagesController < ApplicationController
  #before_action :authenticate_user!, :except => [:index]

  def index
    @ImagesAll = Image.all
    @Images = Image.search_btype(params[:search_btype])
    @Images = @Images.search_date(params[:search_date])
  end

  def new
  	@Image = Image.new
  end

  def show
    @Image = Image.find(params[:id])
  end

  def create
  	@Image = Image.new(image_params)
    @Image.user_id = current_user.id

  	if @Image.save
  		redirect_to @Image, notice: "The image has been uploaded"
  	else
  		render new
  	end
  end

  def destroy
  	@Image = Image.find(params[:id])

  	@Image.destroy
  	redirect_to images_path, notice: "The image has been deleted"
  end

  private
  	def image_params
  	params.require(:image).permit(:body_type, :attachment)
  end
end
