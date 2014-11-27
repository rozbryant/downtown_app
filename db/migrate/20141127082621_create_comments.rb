class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :commenter_id
      t.integer :building_id

      t.timestamps

    end
  end
end
