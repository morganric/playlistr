class AddFilesToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :files, :json
  end
end
