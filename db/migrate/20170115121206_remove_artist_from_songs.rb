class RemoveArtistFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :artist, :string
  end
end
