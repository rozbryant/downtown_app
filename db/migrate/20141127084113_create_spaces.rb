class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.integer :building_id
      t.boolean :storage
      t.string :bike_storage_boolean
      t.boolean :party_room
      t.boolean :sundeck
      t.boolean :parking_leased
      t.boolean :parking_owned
      t.boolean :wine_cellar
      t.boolean :humidor
      t.boolean :dog_run
      t.boolean :lounge
      t.boolean :biz_center
      t.boolean :conf_room
      t.boolean :theater
      t.boolean :guest_parking
      t.boolean :guest_stay
      t.text :note

      t.timestamps

    end
  end
end
