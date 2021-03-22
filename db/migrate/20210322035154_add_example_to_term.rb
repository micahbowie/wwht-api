class AddExampleToTerm < ActiveRecord::Migration[6.0]
  def change
    add_column :terms, :example, :text
  end
end
