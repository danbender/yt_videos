class VideosController < ApplicationController

  def index
    @videos = Video.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(link: params[:video][:link])
    if @video.save
      flash[:success] = "Video was added!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to root_url
  end

end