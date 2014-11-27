class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.text :headline

      t.timestamps

    end
  end
end
