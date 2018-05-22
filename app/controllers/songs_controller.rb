class SongsController < ApplicationController

  before_action :find_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(secure_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show

  end

  def edit

  end

  def update
    @song.update(secure_params(:name ,:artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def secure_params(*args)
    params.require(:song).permit(*args)
  end

end
