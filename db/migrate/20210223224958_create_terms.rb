class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.string :name
      t.text :why
      t.text :what
      t.text :how
      t.timestamps
    end
  end
end
