class PodcastsController < ApplicationController
  before_action :set_genre
 
  def index
    @podcast = @genre.podcasts
  end

  def show
    @podcast = Podcast.find(params[:id])
  end

  def edit
    @podcast = Podcast.find(params[:id])
  end

  def update
    @podcast = Podcast.find(params[:id])

    if @podcast.update(podcast_params)
      genre_podcasts_path(@genre)
    else 
      render :edit
    end

  end 

  def destroy
    @podcast = Podcast.find(params[:id])
    @podcast.destroy
    redirect_to genre_podasts_path(@genre)
  end 

  def new
    @podcast = @genre.podcasts.new
  end

  def create
    @podast = @genre.podcasts.new(podcast_params)

    if @podcast.save
      redirect_to genre_podcasts_path(@genre)
    else 
      render :new
    end

  end 

  private
  def set_genre
    @genre = Genre.find(params[:genre_id])
  end 

  def podcast_params
    params.require(:podcast).permit(:name, :host, :episode_length, :url)
  end 
end
