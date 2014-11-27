class CreateRestrictions < ActiveRecord::Migration
  def change
    create_table :restrictions do |t|
      t.integer :building_id
      t.boolean :no_rental
      t.integer :rental_cap
      t.boolean :credit
      t.boolean :reference
      t.boolean :interview
      t.integer :min_down
      t.boolean :no_cat
      t.boolean :no_dog
      t.integer :cat_count_limit
      t.integer :dog_count_limit
      t.integer :dog_weight_limit
      t.integer :all_dog_weight_limit
      t.integer :all_pet_count_limit
      t.text :note

      t.timestamps

    end
  end
end
