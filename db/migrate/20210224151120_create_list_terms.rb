class CreateListTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :list_terms do |t|
      t.integer :list_id
      t.integer :term_id

      t.timestamps
    end
  end
end
