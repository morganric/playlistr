class AddListToPlaylist < ActiveRecord::Migration
  def change
    add_column :playlists, :list, :json
  end
end
