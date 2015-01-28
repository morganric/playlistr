class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :song
      t.string :artist
      t.string :audio
      t.integer :playlist_id

      t.timestamps
    end
  end
end
