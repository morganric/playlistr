class AddTracksToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :tracks, :json
  end
end
