class AddFileToPlaylist < ActiveRecord::Migration
  def change
    add_column :playlists, :file, :string
  end
end
