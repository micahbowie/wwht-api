class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.text :name
      t.text :description
      t.integer :user_id
      t.timestamps
    end
  end
end
