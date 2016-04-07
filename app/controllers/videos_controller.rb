class VideosController < ApplicationController
  def index
    @videos = Video.all
    @video = Video.new
    @categories = Category.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new video_params

    if @video.save
      flash! :success, :locals => {:title => @video.title}
      redirect_to @video
    else
      flash!(:error)
      render :new 
    end
  end

  def show
    @video = Video.find(params[:id])
  end

  def list
    @video = Video.all
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])

    if @video.update update.params
      flash!(:success)
      redirect_to videos_path
    else
      flash!(:error)
      render :edit
    end
  end

  def destroy
    @video = Video.find(params[:id])

    if @video.destroy
      flash! :warning, :locals => {:title => @video.title}
      redirect_to videos_path
    else
      flash!(:error)
      redirect_to videos_path
    end
  end

  private
  def video_params
    params.require(:video).permit(:title, :description, :thumbnail, :category_id, :video_link)
  end
end
