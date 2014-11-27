class CreateActives < ActiveRecord::Migration
  def change
    create_table :actives do |t|
      t.integer :building_id
      t.boolean :fitness
      t.boolean :in_pool
      t.boolean :out_pool
      t.boolean :in_tennis
      t.boolean :out_tennis
      t.boolean :bball
      t.boolean :spa
      t.text :note

      t.timestamps

    end
  end
end
