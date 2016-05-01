class ImagesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  after_action :verify_authorized, :except => [:index, :show]

  def index
    if params.has_key?(:id)
      id = params[:id].to_i
    else
      id = 1
    end

    @ImagesAll = Image.all
    @Images = Image.search_btype(params[:search_btype])
    @Images = @Images.search_location(params[:search_location])
    @Images = @Images.search_date_start(params[:search_date_start])
    @Images = @Images.search_date_end(params[:search_date_end])

    @AvailableImages = @Images.count
    @Images = @Images.reverse
    @Images = @Images.last(@Images.count - (9 * (id - 1)))
    @Images = @Images.first(9)
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
      flash[:alert] = @Image.errors.full_messages.join(', ')
  		redirect_to new_image_path
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
