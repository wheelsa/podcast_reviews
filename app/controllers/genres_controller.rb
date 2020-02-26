class GenresController < ApplicationController
  before_action :set_user
  # before_action :set_genre, only: [:show, :edit, :destroy]
  def index
    @genre = @user.genres
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    if @genre.update(genre_params)
      user_genres_path(@user)
    else 
      render :edit
    end

  end 

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to user_genres_path(@user)
  end 

  def new
    @genre = @user.genres.new
  end

  def create
    @genre = @user.genres.new(genre_params)

    if  @genre.save
      redirect_to user_genres_path(@user)
    else 
      render :new
    end

  end 

  private
  def set_user
    @user = User.find(params[:user_id])
  end 

  def set_genre
    @genre = Genre.find(params[:id])
  end 

  def genre_params
    params.require(:genre).permit(:name)
  end 
end
