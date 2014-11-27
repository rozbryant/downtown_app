class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |t|
      t.integer :follower_id
      t.integer :building_id
      t.boolean :buyer
      t.boolean :seller
      t.text :note

      t.timestamps

    end
  end
end
