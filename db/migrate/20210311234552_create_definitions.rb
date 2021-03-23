class CreateDefinitions < ActiveRecord::Migration[6.0]
  def change
    create_table :definitions do |t|
      t.text :what
      t.text :why
      t.text :how
      t.text :one_liner
      t.integer :up_vote
      t.integer :term_id

      t.timestamps
    end
  end
end
