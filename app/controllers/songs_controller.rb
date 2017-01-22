class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    #first line: otherwise second line was not working, didnt know which artist.
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)
    @song.artist_id = params[:artist_id]

    @song.save
        redirect_to @song.artist, notice: "song has been added"
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

  redirect_to @song.artist, notice: "Are you sure??"
  end

private

def song_params
    params.require(:song).permit(:title, :artist_id)
  end


end
