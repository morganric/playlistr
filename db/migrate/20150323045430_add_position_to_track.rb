class AddPositionToTrack < ActiveRecord::Migration
  def change
    add_column :tracks, :position, :integer
  end
end
