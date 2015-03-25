class AddTracksToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tracks, :json
  end
end
