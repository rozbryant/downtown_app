class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :building_id
      t.boolean :part_door
      t.boolean :full_door
      t.boolean :catering
      t.boolean :housekeeping
      t.boolean :dry_cleaning
      t.boolean :concierge
      t.boolean :package_receiving
      t.boolean :car_wash
      t.boolean :dog_wash
      t.boolean :restaurant
      t.boolean :social
      t.boolean :groceries
      t.text :note

      t.timestamps

    end
  end
end
