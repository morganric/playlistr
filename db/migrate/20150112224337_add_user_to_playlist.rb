class AddUserToPlaylist < ActiveRecord::Migration
  def change
    add_column :playlists, :user_id, :ingeter
  end
end
