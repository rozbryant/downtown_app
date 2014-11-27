class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :building_id
      t.integer :area_id

      t.timestamps

    end
  end
end
