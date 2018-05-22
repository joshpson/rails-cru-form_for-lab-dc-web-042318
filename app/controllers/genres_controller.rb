class GenresController < ApplicationController

  before_action :find_genre, only: [:show, :edit, :update]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(secure_params(:name))
    redirect_to genre_path(@genre)
  end

  def show

  end

  def edit

  end

  def update
    @genre.update(secure_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

  def secure_params(*args)
    params.require(:genre).permit(*args)
  end

end
