class CreateFavoritings < ActiveRecord::Migration
  def change
    create_table :favoritings do |t|
      t.integer :building_id
      t.integer :favorited_by

      t.timestamps

    end
  end
end
