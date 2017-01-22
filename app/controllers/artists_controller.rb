class ArtistsController < ApplicationController

  def index
    @artists = Artist.all.order(params[:sort])
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
