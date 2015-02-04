class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :display_name
      t.integer :user_id
      t.text :bio
      t.date :dob
      t.string :image
      t.string :twitter

      t.timestamps
    end
  end
end
