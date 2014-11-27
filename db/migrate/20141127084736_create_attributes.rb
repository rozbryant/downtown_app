class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.integer :building_id
      t.string :ownership
      t.integer :unit_count
      t.integer :stories
      t.text :note

      t.timestamps

    end
  end
end
