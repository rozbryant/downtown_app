class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :building_id
      t.string :ownership
      t.integer :year_built
      t.integer :unit_count
      t.integer :stories
      t.text :note

      t.timestamps

    end
  end
end
