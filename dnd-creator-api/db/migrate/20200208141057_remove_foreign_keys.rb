class RemoveForeignKeys < ActiveRecord::Migration[6.0]
  def change
    remove_column :characters, :race_id
    remove_column :characters, :class_id
  end
end
