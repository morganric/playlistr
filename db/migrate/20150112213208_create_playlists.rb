class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :title
      t.text :description
      t.string :audio
      t.string :image
      t.boolean :published

      t.timestamps
    end
  end
end
