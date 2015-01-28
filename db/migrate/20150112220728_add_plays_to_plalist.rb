class AddPlaysToPlalist < ActiveRecord::Migration
  def change
    add_column :playlists, :plays, :ingeter
  end
end
