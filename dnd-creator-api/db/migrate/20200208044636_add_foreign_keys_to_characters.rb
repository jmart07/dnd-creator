class AddForeignKeysToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :race_id, :integer
    add_column :characters, :class_id, :integer
  end
end
