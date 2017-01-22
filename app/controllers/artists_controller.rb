class ArtistsController < ApplicationController

  def index
    @artists = Artist.all.order(params[:sort])
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
