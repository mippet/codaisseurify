class ArtistsController < ApplicationController

  def index
    @artists = Artist.all.order(params[:sort])

  end

  def show
    @artist = Artist.find(params[:id])
    @artists = Artist.all
    @songs = Song.all
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to @artist, notice: "Are you sure??"
  end
  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
