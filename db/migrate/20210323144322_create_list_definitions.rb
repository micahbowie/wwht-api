class CreateListDefinitions < ActiveRecord::Migration[6.0]
  def change
    create_table :list_definitions do |t|
      t.integer :list_id
      t.integer :definition_id

      t.timestamps
    end
  end
end
