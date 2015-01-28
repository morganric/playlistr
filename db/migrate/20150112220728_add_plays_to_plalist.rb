class AddPlaysToPlalist < ActiveRecord::Migration
  def change
    add_column :playlists, :plays, :integer
  end
end
