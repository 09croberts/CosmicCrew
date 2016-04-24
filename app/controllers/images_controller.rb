class ImagesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  after_action :verify_authorized, :except => [:index, :show]

  def index
    @ImagesAll = Image.all
    @Images = Image.search_btype(params[:search_btype])
    @Images = @Images.search_date(params[:search_date])
  end

  def new
  	@Image = Image.new
    authorize @Image
  end

  def show
    @Image = Image.find(params[:id])
  end

  def create
  	@Image = Image.new(image_params)
    @Image.user_id = current_user.id
    authorize @Image

  	if @Image.save
  		redirect_to image_show_path(@Image), notice: "The image has been uploaded"
  	else
  		render new
  	end
  end

  def destroy
  	@Image = Image.find(params[:id])
    authorize @Image

    @Image.comments.destroy_all
  	@Image.destroy
  	redirect_to images_path, notice: "The image has been deleted"
  end

  private
    def image_params
      params.require(:image).permit(:body_type, :attachment, :title, :description, :location, :date)
    end
end
