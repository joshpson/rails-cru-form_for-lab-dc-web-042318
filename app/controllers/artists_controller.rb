class ArtistsController < ApplicationController

  before_action :find_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(secure_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show

  end

  def edit

  end

  def update
    @artist.update(secure_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def secure_params(*args)
    params.require(:artist).permit(*args)
  end

end
